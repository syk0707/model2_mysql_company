package action.kmbbs;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmbbs.KmbbsDAO;
import model.kmbbs.KmbbsDTO;

public class ReplyFormAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8"); 
		int num = Integer.parseInt(request.getParameter("num"));
		
		KmbbsDAO dao = new KmbbsDAO();
		KmbbsDTO dto = dao.readReply(num);
		
		request.setAttribute("dto", dto);
		
		
		return "/admin/view/bbs/replyForm.jsp";
	}

}
