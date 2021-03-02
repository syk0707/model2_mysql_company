package action.kmmember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import model.kmmember.KmmemberDAO;

public class UpdateProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		KmmemberDAO dao = new KmmemberDAO();
		String id = request.getParameter("id");
		String chkpasswd = request.getParameter("chkpasswd");
		String npasswd = request.getParameter("npasswd");	
		String chkNpasswd = request.getParameter("chkNpasswd");
		
		String str = "";
		boolean flag = dao.checkPasswd(id, chkpasswd);
		boolean cflag = false;
		
		
		if(flag==false){
			str = "아이디가 존재하지 않거나, <br> 비밀번호가 잘못되었습니다.";
		}else {
			if(npasswd.equals(chkNpasswd)){
			cflag = dao.updatePasswd(id, npasswd);
			str = "비밀번호가 변경되었습니다";
			}else{
			str = "변경할 비밀번호는 일치해야 합니다.";

			}
		}
		
		request.setAttribute("id", id);
		request.setAttribute("str", str);

		return "/admin/view/member/updateProc.jsp";
	}

}
