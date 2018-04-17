package action.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmmanufacture.KmmanufactureDAO;
import model.kmmanufacture.KmmanufactureDTO;
import utility.Utility;

public class ManuListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//검색될 때 POST 방식으로 저장되기 때문에
				request.setCharacterEncoding("UTF-8"); 
				
				String producttype = Utility.checkNull(request.getParameter("producttype"));
				String col = Utility.checkNull(request.getParameter("col"));
				String word = Utility.checkNull(request.getParameter("word"));
				if(col.equals("total"))word = "";
				if(col.equals(""))col = "total";
				
				int recordPerPage = 6;
				int nowPage = 1;

				if(request.getParameter("nowPage")!=null) {
					nowPage = Integer.parseInt(request.getParameter("nowPage"));
				}

				int sno = ((nowPage - 1) * recordPerPage) + 1;
				int eno = nowPage * recordPerPage;
				
				KmmanufactureDAO dao = new KmmanufactureDAO();
				
				Map map = new HashMap();//검색관련정보,페이징 관련정보
				map.put("col", col);
				map.put("word", word);
				map.put("sno", sno);
				map.put("eno", eno);
				map.put("producttype", producttype);
				
				List<KmmanufactureDTO> list = dao.producttypeList(map);
				int total = dao.totalProductType(map);
				String paging = Utility.manupaging(total, nowPage, recordPerPage, col, word, producttype);
				
				request.setAttribute("list", list);
				request.setAttribute("nowPage", nowPage);
				request.setAttribute("col", col);
				request.setAttribute("word", word);
				request.setAttribute("paging", paging);
				request.setAttribute("producttype", producttype);
				

		return "/view/manufacturelist.jsp";
	}

}
