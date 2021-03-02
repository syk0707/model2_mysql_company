package action.main;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmbbs.KmbbsDAO;
import model.kmbbs.KmbbsDTO;

public class BbsReadAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); 
		int num = Integer.parseInt(request.getParameter("num"));
		KmbbsDAO dao = new KmbbsDAO();
		dao.upCount(num);
		KmbbsDTO dto = dao.read(num);
		String content = dto.getContent();
		content = content.replaceAll("\r\n", "<br>");

		request.setAttribute("dto", dto);
		request.setAttribute("content", content);
			
		return "/view/bbs/read.jsp";
	}

}
