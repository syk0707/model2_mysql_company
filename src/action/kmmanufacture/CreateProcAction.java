package action.kmmanufacture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.*;

import action.Action;
import model.kmmanufacture.*;
import utility.UploadSave;


public class CreateProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//3 model 사용
		
		request.setCharacterEncoding("UTF-8"); 
		KmmanufactureDTO dto = new KmmanufactureDTO();
		String upDir= request.getSession().getServletContext().getRealPath("/view/storage");
		String tempDir=request.getSession().getServletContext().getRealPath("/view/storage");
		UploadSave upload = new UploadSave(request,-1,-1,tempDir);
		
		String name = UploadSave.encode(upload.getParameter("name"));
		String subject = UploadSave.encode(upload.getParameter("subject"));
		String subtitle = UploadSave.encode(upload.getParameter("subtitle"));
		String content = UploadSave.encode(upload.getParameter("content"));
		String producttype = UploadSave.encode(upload.getParameter("producttype"));
		String passwd = upload.getParameter("passwd");
		
		FileItem fileItem = upload.getFileItem("filename");
		int size = (int)fileItem.getSize();
		String filename = null;
		
		if(size>0)filename = UploadSave.saveFile(fileItem, upDir);
		
		request.setCharacterEncoding("UTF-8");
		KmmanufactureDAO dao = new KmmanufactureDAO();
		
		dto.setName(name);
		dto.setSubject(subject);
		dto.setSubtitle(subtitle);
		dto.setContent(content);
		dto.setPasswd(passwd);
		dto.setFilesize(size);
		dto.setFilename(filename);
		dto.setIp(request.getRemoteAddr());
		dto.setProducttype(producttype);
		//4 request에 결과 저장
		boolean flag = dao.create(dto);
		request.setAttribute("flag", flag);
		
		//5 결과 보여줄 view페이지 선택
		return "/admin/view/manufacture/createProc.jsp";
	}

}
