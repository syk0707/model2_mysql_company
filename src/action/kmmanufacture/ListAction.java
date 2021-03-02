package action.kmmanufacture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;

import model.kmmanufacture.KmmanufactureDAO;
import model.kmmanufacture.KmmanufactureDTO;
import utility.Utility;


public class ListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//검색될 때 POST 방식으로 저장되기 때문에
		request.setCharacterEncoding("UTF-8"); 
		
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));
		if(col.equals("total"))word = "";
		if(col.equals(""))col = "total";
		
		int recordPerPage =5;
		int nowPage = 1;

		if(request.getParameter("nowPage")!=null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		int sno = ((nowPage - 1) * recordPerPage) +1;
		int eno = nowPage * recordPerPage;
		
		KmmanufactureDAO dao = new KmmanufactureDAO();
		
		Map map = new HashMap();//검색관련정보,페이징 관련정보
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);
		
		List<KmmanufactureDTO> list = dao.list(map);
		int total = dao.getTotal(map);
		String paging = Utility.paging3(total, nowPage, recordPerPage, col, word);
		
		request.setAttribute("list", list);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("paging", paging);
		

		
		return "/admin/view/manufacture/list.jsp";
	}

}
