package action.main;

import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmmanufacture.KmmanufactureDAO;
import model.kmmanufacture.KmmanufactureDTO;
import utility.Utility;

public class ManuReadAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); 
		String rProducttype = Utility.checkNull(request.getParameter("producttype"));
		String producttype = URLDecoder.decode(rProducttype, "UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));
		if(col.equals("total"))word = "";
		if(col.equals(""))col = "total";
		
		KmmanufactureDAO dao = new KmmanufactureDAO();
		dao.upCount(num);
		KmmanufactureDTO dto = dao.read(num);

		request.setAttribute("dto", dto);
		request.setAttribute("producttype", producttype);
	
		return "/view/manufactureread.jsp";
	}

}
