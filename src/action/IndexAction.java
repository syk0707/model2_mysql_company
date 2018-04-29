package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.kmbbs.KmbbsDAO;
import model.kmbbs.KmbbsDTO;
import model.kmmanufacture.KmmanufactureDAO;
import model.kmmanufacture.KmmanufactureDTO;
import utility.Utility;

public class IndexAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); 
		KmmanufactureDAO dao = new KmmanufactureDAO();
		
		List<KmmanufactureDTO> list = dao.randomlist();
		
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));
		if(col.equals("total"))word = "";
		if(col.equals(""))col = "total";
		
		int recordPerPage =5;
		int nowPage = 1;

		if(request.getParameter("nowPage")!=null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		KmbbsDAO dao2 = new KmbbsDAO();
		
		int total = dao2.getTotal();
		if(total<3) {
			total=3;
		}
		int sno = total-2;
		int eno = total;

		Map map = new HashMap();//검색관련정보,페이징 관련정보
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);

		List<KmbbsDTO> list2 = dao2.list(map);
		
		KmmanufactureDAO dao3 = new KmmanufactureDAO();
		List<KmmanufactureDTO> faclist = dao3.facilitieslist();
		
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		request.setAttribute("faclist", faclist);

		
		return "/view/index.jsp";
	}

}
