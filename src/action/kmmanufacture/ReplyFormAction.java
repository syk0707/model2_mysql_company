package action.kmmanufacture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;

import model.kmmanufacture.KmmanufactureDAO;
import model.kmmanufacture.KmmanufactureDTO;

public class ReplyFormAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8"); 
		int num = Integer.parseInt(request.getParameter("num"));
		
		KmmanufactureDAO dao = new KmmanufactureDAO();
		KmmanufactureDTO dto = dao.readReply(num);
		
		request.setAttribute("dto", dto);
		
		
		return "/admin/view/manufacture/replyForm.jsp";
	}

}
