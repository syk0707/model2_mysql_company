package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardDTO;

public class ReplyFormAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.readReply(num);
		
		request.setAttribute("dto", dto);
		
		
		return "/view/replyForm.jsp";
	}

}