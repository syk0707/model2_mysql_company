package action.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmmember.KmmemberDAO;

public class LoginProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		Map map = new HashMap();
		
		map.put("id",id);
		map.put("pw",pw);
		
		KmmemberDAO dao = new KmmemberDAO();

		boolean flag = dao.loginCheck(map);
		String grade = null;
		if(flag){
			grade = dao.getGrade(id);
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("pw", pw);
			request.getSession().setAttribute("grade", grade);
		}
		Cookie cookie = null; 
	    
	    String c_id = request.getParameter("c_id"); // Y, 아이디 저장 여부 
	       
	    if (c_id != null){  // 처음에는 값이 없음으로 null 체크로 처리
	      cookie = new Cookie("c_id", "Y");    // 아이디 저장 여부 쿠키 
	      cookie.setMaxAge(120);               // 2 분 유지 
	      response.addCookie(cookie);          // 쿠키 기록 
	   
	      cookie = new Cookie("c_id_val", id); // 아이디 값 저장 쿠키  
	      cookie.setMaxAge(120);               // 2 분 유지 
	      response.addCookie(cookie);          // 쿠키 기록  
	         
	    }else{ 
	      cookie = new Cookie("c_id", "");     // 쿠키 삭제 
	      cookie.setMaxAge(0); 
	      response.addCookie(cookie); 
	         
	      cookie = new Cookie("c_id_val", ""); // 쿠키 삭제 
	      cookie.setMaxAge(0); 
	      response.addCookie(cookie); 
	    } 
	    request.setAttribute("flag", flag);
		
		return "/view/loginProc.jsp";
	}

}