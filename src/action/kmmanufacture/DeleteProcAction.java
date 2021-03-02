package action.kmmanufacture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmmanufacture.KmmanufactureDAO;
import utility.UploadSave;


public class DeleteProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//모델 사용
		
		request.setCharacterEncoding("UTF-8");
		String upDir = request.getRealPath("/view/storage");
		int num = Integer.parseInt(request.getParameter("num"));
		String passwd = request.getParameter("passwd");
		String oldfile = request.getParameter("oldfile");
		
		KmmanufactureDAO dao = new KmmanufactureDAO();
		boolean pflag = dao.passwdCheck(num, passwd);
		boolean flag = false;
		if(pflag) {
			flag = dao.delete(num);
		}
		
		if(flag) {
			UploadSave.deleteFile(upDir, oldfile);
		}
		request.setAttribute("pflag", pflag);
		request.setAttribute("flag", flag);
		return "/admin/view/manufacture/deleteProc.jsp";
	}

}
