package model.kmbbs;

import java.sql.Connection;

import utility.DBClose;
import utility.DBOpen;

public class KmbbsMgr {
	private static KmbbsDAO dao = null;

	static {
		dao = new KmbbsDAO();
	}
	
	
	//두개를 하나로
	public boolean reply(KmbbsDTO dto) {
		boolean flag = false;
		Connection con = null;
		try {
			con = DBOpen.open();
			//애플리케이션 상에서 commit을 하지 않는다.자동으로 하지 않고 명시적으로 commit을 한다. 같은 con 객체만 트랜젝션(transaction) 처리를 할 수 있다.
			con.setAutoCommit(false);
			// ansnum의 순서를 재정렬
			//하나의 dao에서 하나의 con으로 처리해야 트랜잭션 시 동일하게 commit하고 rollback 할 수 있기 때문에 
			dao.upAnsnum(dto.getRef(), dto.getAnsnum(), con);
			// 답변글을 등록(ref는부모글의 ref와 같아야하고,indent, ansnum
			// 부모글보다 1증가한 값으로 등록)
			flag = dao.insertReply(dto, con);
			// 두개가 다 처리가 됐으면 실제로 DB에 적용하라...
			// 만약 오류가 나면 호출한 곳으로 온다. 그것을 catch로 잡는다. 어떤 문장인지 확인하고 con.rollback()으로 메모리에 있는 문장을 취소처리한다.
			con.commit();
		} catch (Exception e) {
			System.out.print(e);
			try {
				// 지금까지의 문장을 취소처리하라..
				con.rollback();
			} catch (Exception ex) {
			}
		} finally {
			try {
				
				//종료 시 AutoCommit을 true로 변경하고 종료한다.
				con.setAutoCommit(true);
			} catch (Exception ex) {
			}

			DBClose.close(con);
		}
		return flag;
	}
}
