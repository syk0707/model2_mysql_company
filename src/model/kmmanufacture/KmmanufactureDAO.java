package model.kmmanufacture;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import utility.DBClose;
import utility.DBOpen;
import utility.Utility;

public class KmmanufactureDAO {
	
public List<KmmanufactureDTO> producttypeList(Map map){
		
		List<KmmanufactureDTO> list = new ArrayList<KmmanufactureDTO>();
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String col = (String)map.get("col");
		String word = (String)map.get("word");
		String producttype = Utility.checkNull((String)map.get("producttype"));
		
		if(producttype==null||producttype.equals("")) {
			producttype = "%";
		}
		
		int sno = (Integer)map.get("sno") - 1;
		StringBuffer sql = new StringBuffer();
		
		sql.append("   SELECT num, name, subject, subtitle, content, ref, indent, ");
		sql.append("          ansnum, regdate, passwd, count, ip, filename, filesize, refnum, producttype ");
		sql.append("   FROM   kmmanufacture ");
		sql.append("   WHERE  producttype LIKE '"+producttype+"'");
		
		if(word.length()>0 && col.equals("subject_content")) {
			sql.append("  	  WHERE subject LIKE "+"'%"+word+"%'  ");
			sql.append("  	  OR content LIKE "+"'%"+word+"%'  ");
		}else if(word.length()>0) {
			sql.append("  	  WHERE "+col+" LIKE "+"'%"+word+"%'  ");
		}
		sql.append("	      ORDER BY num DESC, ansnum ASC   ");
		sql.append("    	  LIMIT ?,6 ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, sno);

			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				KmmanufactureDTO dto = new KmmanufactureDTO();
				
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setSubject(rs.getString("subject"));
				dto.setSubtitle(rs.getString("subtitle"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setCount(rs.getInt("count"));
				dto.setIndent(rs.getInt("indent"));
				dto.setFilename(rs.getString("filename"));
				dto.setFilesize(rs.getInt("filesize"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(con, pstmt, rs);
		}
		
		return list;
		
	}
	
	public int totalProductType(Map map) { // 맵 타입의 맵
		int total = 0;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null; // 레코드 갯수를 가져온다.(생성, 수정, 삭제하는 것이 아니기 때문에)

		String col = (String) map.get("col");
		String word = (String) map.get("word");
		String producttype = (String) map.get("producttype");

		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT count(*) FROM kmmanufacture WHERE producttype='"+producttype+"'");
		if (word.trim().length() > 0) {
			sql.append(" AND " + col + " like '%'||?||'%'  ");
		}

		try {
			pstmt = con.prepareStatement(sql.toString());
			if (word.trim().length() > 0) {
				pstmt.setString(1, word);
			}
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				total = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(con, pstmt, rs);
		}

		return total;
	}
	
	public boolean insertReply(KmmanufactureDTO dto, Connection con) throws Exception {
		boolean flag = false;
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		
		sql.append("    INSERT INTO kmmanufacture (name, passwd, ");
		sql.append("   	subject, subtitle, content, regdate, ref, indent, ansnum, ");
		sql.append("    ip, filename, filesize, refnum )");
		sql.append("    			VALUES( ?,    ?,     ");
		sql.append("    ?,       ?,       curdate(),       ?,   ?,      ?,");
		sql.append("    ?,  ?,        ?,        ?)");
				
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPasswd());
			pstmt.setString(3, dto.getSubject());
			pstmt.setString(4, dto.getContent());
			pstmt.setInt(5, dto.getRef());
			pstmt.setInt(6, dto.getIndent()+1);
			pstmt.setInt(7, dto.getAnsnum()+1);
			pstmt.setString(8, dto.getIp());
			pstmt.setString(9, dto.getFilename());
			pstmt.setInt(10, dto.getFilesize());
			pstmt.setInt(11, dto.getNum());
			
			int cnt = pstmt.executeUpdate();
			if(cnt > 0) flag = true;
		} finally {
			DBClose.close(pstmt);
		}
		return flag;
		
	}
	
	public void upAnsnum(int ref, int ansnum, Connection con) throws Exception {
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append("    UPDATE kmmanufacture SET ansnum = ansnum + 1 ");
		sql.append("    WHERE ref = ? and ansnum > ? ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, ref);
			pstmt.setInt(2, ansnum);
			int cnt = pstmt.executeUpdate();
			if(cnt>0) {
				System.out.println("답변이 있으므로 재정렬 ");
			}else {
				System.out.println("답변이 없으므로 재정렬 불가");
			}
			} finally {
				DBClose.close(pstmt);
			}
		
	} 
	
	
	public boolean delete(int num) {
		boolean flag = false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append("	DELETE FROM kmmanufacture ");
		sql.append("	WHERE num = ?");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, num);
			
			int cnt = pstmt.executeUpdate();
			if(cnt>0) {
				flag = true;
			}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBClose.close(con, pstmt);
		}
		return flag;
		
		
	}
	
	public List<KmmanufactureDTO> list(Map map){
		
		List<KmmanufactureDTO> list = new ArrayList<KmmanufactureDTO>();
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String col = (String)map.get("col");
		String word = (String)map.get("word");
		int sno = (Integer)map.get("sno") - 1;
		int eno = (Integer)map.get("eno");
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("   SELECT num, name, subject, subtitle, content, ref, indent, ");
		sql.append("          ansnum, regdate, passwd, count, ip, filename, filesize, refnum, producttype ");
		sql.append("   FROM   kmmanufacture ");
		
		if(word.length()>0 && col.equals("subject_content")) {
			sql.append("  	  WHERE subject LIKE "+"'%"+word+"%'  ");
			sql.append("  	  OR content LIKE "+"'%"+word+"%'  ");
		}else if(word.length()>0) {
			sql.append("  	  WHERE "+col+" LIKE "+"'%"+word+"%'  ");
		}
		sql.append("	      ORDER BY num DESC, ansnum ASC   ");
		sql.append("    	  LIMIT ?,5 ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, sno);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				KmmanufactureDTO dto = new KmmanufactureDTO();
				
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setSubject(rs.getString("subject"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setCount(rs.getInt("count"));
				dto.setIndent(rs.getInt("indent"));
				dto.setFilename(rs.getString("filename"));
				dto.setFilesize(rs.getInt("filesize"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(con, pstmt, rs);
		}
		
		return list;
		
	}
	
	public List<KmmanufactureDTO> randomlist(){
		List<KmmanufactureDTO> list = new ArrayList<KmmanufactureDTO>();
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		
		sql.append(	"	SELECT * FROM kmmanufacture	");
		sql.append(	"	ORDER BY rand()	");
		sql.append( "	LIMIT 6	");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				KmmanufactureDTO dto = new KmmanufactureDTO();
				
				dto.setNum(rs.getInt("num"));
				dto.setSubject(rs.getString("subject"));
				dto.setSubtitle(rs.getString("subtitle"));
				dto.setSubject(rs.getString("subject"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setFilename(rs.getString("filename"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(con, pstmt, rs);
		}
		
		return list;
	}
	
	public boolean create(KmmanufactureDTO dto){
		boolean flag = false;
		Connection con = DBOpen.open();
		
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append("    INSERT INTO kmmanufacture( name, passwd, ");
		sql.append("	subject, subtitle, content, regdate, ref, ");
		sql.append("	ip, filename, filesize, producttype) ");
		sql.append("	VALUES(?,?, ");
		sql.append("	?, 		?,		?, curdate(),	(SELECT ifnull(MAX(ref),0) + 1 FROM kmmanufacture a),	");
		sql.append("	?,		?,		?, ?)");
		
		try {
		pstmt=con.prepareStatement(sql.toString());
		pstmt.setString(1, dto.getName());
		pstmt.setString(2, dto.getPasswd());
		pstmt.setString(3, dto.getSubject());
		pstmt.setString(4, dto.getSubtitle());
		pstmt.setString(5, dto.getContent());
		pstmt.setString(6, dto.getIp());
		pstmt.setString(7, dto.getFilename());
		pstmt.setInt(8, dto.getFilesize());
		pstmt.setString(9, dto.getProducttype());
		int cnt = pstmt.executeUpdate();
		if(cnt>0)flag=true;
		}catch(Exception e) {
			System.out.println(e);
		}
		finally {
			DBClose.close(con,pstmt);
		}
		return flag;
	}
	
	public KmmanufactureDTO read(int num) {
		KmmanufactureDTO dto = null;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append("    SELECT num, name, subject, subtitle, content, count, ");
		sql.append("    filename, filesize, ip, regdate FROM kmmanufacture WHERE num = ? ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new KmmanufactureDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setSubject(rs.getString("subject"));
				dto.setSubtitle(rs.getString("subtitle"));
				dto.setContent(rs.getString("content"));
				dto.setCount(rs.getInt("count"));
				dto.setFilename(rs.getString("filename"));
				dto.setFilesize(rs.getInt("filesize"));
				dto.setIp(rs.getString("ip"));
				dto.setRegdate(rs.getString("regdate"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBClose.close(con, pstmt, rs);
		}
		
		
		
		return dto;
	}
	
	public boolean update(KmmanufactureDTO dto) {
		boolean flag = false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		
		int i = 0;
		sql.append(" UPDATE kmmanufacture SET name=?,  ");
		sql.append(" subject=?, subtitle=?, content=?   ");
		if(dto.getFilesize()>0) {
		sql.append(" ,filename=?,filesize=?  ");}
		sql.append(" WHERE num = ?  ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(++i, dto.getName());
			pstmt.setString(++i, dto.getSubject());
			pstmt.setString(++i, dto.getSubtitle());
			pstmt.setString(++i, dto.getContent());
			if(dto.getFilesize()>0) {
				pstmt.setString(++i,  dto.getFilename());
				pstmt.setInt(++i, dto.getFilesize());
			}
			pstmt.setInt(++i, dto.getNum());
			
			int cnt = pstmt.executeUpdate();
			if(cnt>0) flag = true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(con, pstmt);
		}
		
		return flag;
	}
	
	public int getTotal(Map map) { 
			    int total =0;
			    Connection con = DBOpen.open();
			    PreparedStatement pstmt=null; 
			    ResultSet rs = null; 
			 
			    String col = (String)map.get("col"); 
			    String word = (String)map.get("word"); 
			 
			    StringBuffer sql = new StringBuffer(); 
			 
			    sql.append(" SELECT COUNT(*) FROM kmmanufacture "); 
			 
			    if(word.length()>0 && col.equals("subject_content")){ 
			        sql.append(" WHERE (subject LIKE "+"'%"+word+"%' "); 
			        sql.append(" OR content LIKE "+"'%"+word+"%') "); 
			    }else if(word.length()>0){ 
			        sql.append(" WHERE "+col+" LIKE "+"'%"+word+"%' "); 
			    } 
			try{ 
			   pstmt = con.prepareStatement(sql.toString()); 
			   rs = pstmt.executeQuery(); 
			   if(rs.next()){ 
			      total = rs.getInt(1); 
			   }
			   }catch (SQLException e) {
				   System.out.println(e);
			   }finally{ 
			    DBClose.close(con, pstmt, rs); 
			} 
			 
			return total; 
			 
			} 
	
	public void upCount(int num){
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null; 
		StringBuffer sql = new StringBuffer(); 
		sql.append(" UPDATE kmmanufacture SET count = count +1 "); 
		sql.append(" WHERE num = ? "); 
		try{ 
		   pstmt = con.prepareStatement(sql.toString()); 
		   pstmt.setInt(1, num); 
		   int cnt = pstmt.executeUpdate(); 
		   if(cnt>0){ 
		       System.out.println("조회수 증가"); 
		   }else{ 
		       System.out.println("조회수 증가 실패"); 
		   }
		   }catch(SQLException e) {
			   System.out.println(e);
		   }finally{ 
		   DBClose.close(con, pstmt); 
		} 
		 
		}
	
	public boolean checkRefnum(int num) 
			{ 
			    boolean flag = false; 
			    Connection con = DBOpen.open();
			    PreparedStatement pstmt = null; 
			    ResultSet rs = null; 
			    StringBuffer sql = new StringBuffer(); 
			    sql.append(" SELECT count(*)  FROM kmmanufacture  "); 
			    sql.append(" WHERE refnum = ?  "); 
			    try{ 
			    pstmt = con.prepareStatement(sql.toString()); 
			    pstmt.setInt(1, num); 
			 
			    rs = pstmt.executeQuery(); 
			    rs.next(); 
			    int cnt = rs.getInt(1); 
			    if(cnt>0){ 
			       flag = true; //부모글이다 
			    } 
			    }catch(SQLException e) {
			    	System.out.println(e);
			    }
			    
			    finally{ 
			    DBClose.close(con, pstmt,rs); 
			    } 
			 
			 return flag; 
			} 
	
	public KmmanufactureDTO readReply(int num){ 
			KmmanufactureDTO dto = null; 
			Connection con = DBOpen.open();
			PreparedStatement pstmt = null; 
			ResultSet rs = null; 
			StringBuffer sql = new StringBuffer(); 
			sql.append(" SELECT num,ref,indent,ansnum,subject from kmmanufacture "); 
			sql.append(" WHERE num = ? "); 
			try{ 
			   pstmt = con.prepareStatement(sql.toString()); 
			   pstmt.setInt(1, num); 
			   rs = pstmt.executeQuery(); 
			   if(rs.next()){ 
			       dto = new KmmanufactureDTO(); 
			       dto.setNum(rs.getInt("num")); 
			       dto.setSubject(rs.getString("subject")); 
			       dto.setRef(rs.getInt("ref")); 
			       dto.setIndent(rs.getInt("indent")); 
			       dto.setAnsnum(rs.getInt("ansnum")); 
			                } 
			       
			}catch(SQLException e) {
				System.out.println(e);
			}
			
			finally{ 
			 DBClose.close(con, pstmt, rs); 
			} 
			 
			 return dto; 
			  } 
	
	public boolean passwdCheck(int num, String passwd) 
			{ 
		
			    boolean flag = false; 
			    Connection con = DBOpen.open();
			    PreparedStatement pstmt = null; 
			    ResultSet rs = null; 
			    StringBuffer sql = new StringBuffer(); 
			    sql.append(" SELECT passwd FROM kmmanufacture "); 
			    sql.append(" WHERE num = ? and passwd = ? "); 
			    try{ 
			   pstmt = con.prepareStatement(sql.toString()); 
			   pstmt.setInt(1, num); 
			   pstmt.setString(2, passwd); 
			   rs = pstmt.executeQuery(); 
			   flag = rs.next(); 
			}catch(SQLException e) {
				System.out.println(e);
			}finally{ 
			   DBClose.close(con, pstmt, rs); 
			} 
			 
			    return flag; 
			}
	
	
}
