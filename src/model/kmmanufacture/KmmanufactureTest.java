package model.kmmanufacture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class KmmanufactureTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		KmmanufactureMgr mgr = new KmmanufactureMgr();
		KmmanufactureDAO dao = new KmmanufactureDAO();
		//create(dao);
		//read(dao);
		//update(dao);
		//list(dao);
		//delete(dao);
		reply(mgr, dao);
		//readReply(dao);
	}
	
	

	private static void readReply(KmmanufactureDAO dao) {
		// TODO Auto-generated method stub
		KmmanufactureDTO dto = dao.readReply(1);
		p(dto);
	}



	private static void reply(KmmanufactureMgr mgr, KmmanufactureDAO dao) {
		// TODO Auto-generated method stub
		
		KmmanufactureDTO dto = dao.readReply(1);
		dto.setName("답변자");
		dto.setContent("답변내용");
		dto.setIp("127.0.0.1");
		dto.setPasswd("1234");

		if(mgr.reply(dto)) {
			p("답변 성공");
		}else {
			p("답변 실패");
		}
	}

	private static void delete(KmmanufactureDAO dao) {
		// TODO Auto-generated method stub
		
		if(dao.delete(2)) {
			p("성공");
		}else {
			p("실패");
		}
	}

	private static void list(KmmanufactureDAO dao) {
		// TODO Auto-generated method stub
		Map map = new HashMap();
		map.put("col", "");
		map.put("word", "");
		map.put("sno", 1);
		map.put("eno", 5);

	}


	private static void read(KmmanufactureDAO dao) {
		// TODO Auto-generated method stub
		KmmanufactureDTO dto = dao.read(1);
		p(dto);
	}
	

	private static void p(KmmanufactureDTO dto) {
		// TODO Auto-generated method stub
		p("번호 : " + dto.getNum());
		p("이름 : " + dto.getName());
		p("제목 : " + dto.getSubject());
		p("내용 : " + dto.getContent());
		p("조회수 : " + dto.getCount());
		p("파일이름 : " + dto.getFilename());
		p("파일크기 : " + dto.getFilesize());
		p("등록날짜 : " + dto.getRegdate());
		p("indent : " + dto.getIndent());
		p("ansnum : " + dto.getAnsnum());
		p("ref : " + dto.getRef());
		p("refnum : " + dto.getRefnum());
	}

	private static void create(KmmanufactureDAO dao) {
		KmmanufactureDTO dto = new KmmanufactureDTO();
		dto.setName("글쓴이");
		dto.setSubject("제목");
		dto.setContent("내용");
		dto.setIp("127.0.0.1");
		dto.setPasswd("1234");
		// TODO Auto-generated method stub
		if(dao.create(dto)) {
			p("성공");
		}else {
			p("실패");
		}
	}
	
	private static void update(KmmanufactureDAO dao) {
		KmmanufactureDTO dto = new KmmanufactureDTO();
		dto.setName("김상윤");
		dto.setSubject("제목수정");
		dto.setContent("내용수정");
		dto.setNum(1);
		// TODO Auto-generated method stub
		if(dao.update(dto)) {
			p("성공");
		}else {
			p("실패");
		}
	}

	private static void p(String string) {
		// TODO Auto-generated method stub
		System.out.println(string);
	}

}
