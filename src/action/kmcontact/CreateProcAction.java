package action.kmcontact;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmcontact.KmcontactDAO;
import model.kmcontact.KmcontactDTO;
import utility.Utility;

public class CreateProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//3 model 사용
		request.setCharacterEncoding("UTF-8");
		KmcontactDTO dto = new KmcontactDTO();
		
		String name = request.getParameter("name");
		String content = Utility.checkNull(request.getParameter("content"));
		String email = request.getParameter("email");
		
		KmcontactDAO dao = new KmcontactDAO();
		
		dto.setName(name);
		dto.setContent(content);
		dto.setEmail(email);
		dto.setIp(request.getRemoteAddr());
		//4 request에 결과 저장
		boolean flag = dao.create(dto);
		request.setAttribute("flag", flag);
		
		//5 결과 보여줄 view페이지 선택
		return "/admin/view/contact/createProc.jsp";
	}

}
