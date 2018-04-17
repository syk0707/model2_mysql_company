package action.kmbbs;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmbbs.KmbbsDAO;

public class DeleteFormAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); 
		int num = Integer.parseInt(request.getParameter("num"));
		KmbbsDAO dao = new KmbbsDAO();
		boolean flag = dao.checkRefnum(num);
		
		request.setAttribute("flag", flag);
		return "/admin/view/bbs/deleteForm.jsp";
	}

}
