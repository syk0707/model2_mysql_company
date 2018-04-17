package action.kmmanufacture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmmanufacture.KmmanufactureDAO;
import model.kmmanufacture.KmmanufactureDTO;

public class ReadAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); 
		int num = Integer.parseInt(request.getParameter("num"));
		KmmanufactureDAO dao = new KmmanufactureDAO();
		dao.upCount(num);
		KmmanufactureDTO dto = dao.read(num);
		
		request.setAttribute("dto", dto);
			
		return "/admin/view/manufacture/read.jsp";
	}

}
