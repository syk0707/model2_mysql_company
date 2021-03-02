package action.kmmember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmmember.KmmemberDAO;
import model.kmmember.KmmemberDTO;

public class UpdateFormAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String id = request.getParameter("id");
		
		request.setAttribute("id", id);
		
		return "/admin/view/member/updateForm.jsp";
	}

}
