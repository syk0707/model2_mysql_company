package action.kmcontact;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmcontact.KmcontactDAO;
import model.kmcontact.KmcontactDTO;

public class ReadAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); 
		int num = Integer.parseInt(request.getParameter("num"));
		KmcontactDAO dao = new KmcontactDAO();

		KmcontactDTO dto = dao.read(num);
		
		request.setAttribute("dto", dto);
			
		return "/admin/view/contact/read.jsp";
	}

}
