package action.kmcontact;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmcontact.KmcontactDAO;

public class DeleteProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//모델 사용
		
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		
		KmcontactDAO dao = new KmcontactDAO();
		
		boolean flag = false;
		flag = dao.delete(num);
		
		request.setAttribute("flag", flag);
		return "/admin/view/contact/deleteProc.jsp";
	}

}
