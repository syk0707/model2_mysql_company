package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import model.BoardDAO;
import model.BoardDTO;
import utility.UploadSave;

public class UpdateProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		BoardDTO dto = new BoardDTO();

		String tempDir = request.getRealPath("/view/temp");
		String upDir = request.getRealPath("/view/storage");
		UploadSave upload = new UploadSave(request, -1, -1, tempDir);

		// hidden 데이터 받기
		int num = Integer.parseInt(upload.getParameter("num"));
		String nowPage = upload.getParameter("nowPage");
		String col = upload.getParameter("col");
		String word = UploadSave.encode(upload.getParameter("word"));
		String oldfile = UploadSave.encode(upload.getParameter("oldfile"));

		String name = UploadSave.encode(upload.getParameter("name"));
		String subject = UploadSave.encode(upload.getParameter("subject"));
		String content = UploadSave.encode(upload.getParameter("content"));
		String passwd = upload.getParameter("passwd");

		FileItem fileItem = upload.getFileItem("filename");
		int size = (int) fileItem.getSize();
		String filename = null;
		if (size > 0) {
			filename = UploadSave.saveFile(fileItem, upDir);
		}

		dto.setNum(num);
		dto.setName(name);
		dto.setSubject(subject);
		dto.setContent(content);
		dto.setFilesize(size);
		dto.setFilename(filename);

		// form에서 보내는 데이터 받기

		BoardDAO dao = new BoardDAO();
		boolean pflag = dao.passwdCheck(num, passwd);
		boolean flag = false;
		if (pflag) {
			flag = dao.update(dto);
		} else {
			UploadSave.deleteFile(upDir, filename);
		}

		if (flag) {
			if (size > 0) {
				UploadSave.deleteFile(upDir, oldfile);
			}
		} else {
			UploadSave.deleteFile(upDir, filename);
		}

		request.setAttribute("flag", flag);
		request.setAttribute("pflag", pflag);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);

		return "/view/updateProc.jsp";
	}

}
