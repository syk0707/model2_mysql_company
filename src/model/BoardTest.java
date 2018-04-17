package model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BoardTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BoardMgr mgr = new BoardMgr();
		BoardDAO dao = new BoardDAO();
		//create(dao);
		//read(dao);
		//update(dao);
		//list(dao);
		//delete(dao);
		reply(mgr, dao);
		//readReply(dao);
	}
	
	

	private static void readReply(BoardDAO dao) {
		// TODO Auto-generated method stub
		BoardDTO dto = dao.readReply(1);
		p(dto);
	}



	private static void reply(BoardMgr mgr, BoardDAO dao) {
		// TODO Auto-generated method stub
		
		BoardDTO dto = dao.readReply(1);
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

	private static void delete(BoardDAO dao) {
		// TODO Auto-generated method stub
		
		if(dao.delete(2)) {
			p("성공");
		}else {
			p("실패");
		}
	}

	private static void list(BoardDAO dao) {
		// TODO Auto-generated method stub
		Map map = new HashMap();
		map.put("col", "");
		map.put("word", "");
		map.put("sno", 1);
		map.put("eno", 5);
		List list = dao.getList(map);
		for(int i = 0; i<list.size(); i++) {
			BoardDTO dto = (BoardDTO)list.get(i);
			p(dto);
			p("--------------");
		}
		
	}


	private static void read(BoardDAO dao) {
		// TODO Auto-generated method stub
		BoardDTO dto = dao.read(1);
		p(dto);
	}
	

	private static void p(BoardDTO dto) {
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

	private static void create(BoardDAO dao) {
		BoardDTO dto = new BoardDTO();
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
	
	private static void update(BoardDAO dao) {
		BoardDTO dto = new BoardDTO();
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
