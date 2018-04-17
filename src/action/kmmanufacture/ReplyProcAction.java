package action.kmmanufacture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import action.Action;
import model.kmmanufacture.KmmanufactureDTO;
import model.kmmanufacture.KmmanufactureMgr;
import utility.UploadSave;

public class ReplyProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8"); 
		String tempDir = request.getRealPath("/view/temp");
		String upDir = request.getRealPath("/view/storage");
		UploadSave upload = new UploadSave(request,-1,-1,tempDir);
		
		//hidden 값 읽어오기
		int num = Integer.parseInt(upload.getParameter("num"));
		int ref = Integer.parseInt(upload.getParameter("ref"));
		int indent = Integer.parseInt(upload.getParameter("indent"));
		int ansnum = Integer.parseInt(upload.getParameter("ansnum"));
		
		String nowPage = upload.getParameter("nowPage");
		String col = upload.getParameter("col");
		String word = UploadSave.encode(upload.getParameter("word"));
		
		//form 전달 값 읽어오기
		String name = UploadSave.encode(upload.getParameter("name"));
		String subject = UploadSave.encode(upload.getParameter("subject"));
		String content = UploadSave.encode(upload.getParameter("content"));
		String passwd = UploadSave.encode(upload.getParameter("passwd"));
		
		FileItem fileItem = upload.getFileItem("filename");
		
		int size = (int)fileItem.getSize();
		String filename = null;
		
		if(size>0)filename = UploadSave.saveFile(fileItem, upDir);
		
		String ip = request.getRemoteAddr();
		
		KmmanufactureDTO dto = new KmmanufactureDTO();
		
		dto.setNum(num);
		dto.setName(name);
		dto.setSubject(subject);
		dto.setContent(content);
		dto.setPasswd(passwd);
		dto.setFilesize(size);
		dto.setFilename(filename);
		dto.setIp(ip);
		
		//답변처리에서 꼭 해야할 일
		dto.setRef(ref);
		dto.setIndent(indent);
		dto.setAnsnum(ansnum);

		
		KmmanufactureMgr mgr = new KmmanufactureMgr();
		boolean flag = mgr.reply(dto);
		
		request.setAttribute("flag", flag);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		
		return "/admin/view/manufacture/replyProc.jsp";
	}

}
