package model.kmcontact;

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

public class KmcontactDAO {
	
	public boolean delete(int num) {
		boolean flag = false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append("	DELETE FROM kmcontact ");
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
	
	public List<KmcontactDTO> list(Map map){
		
		List<KmcontactDTO> list = new ArrayList<KmcontactDTO>();
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String col = (String)map.get("col");
		String word = (String)map.get("word");
		int sno = (Integer)map.get("sno")-1;
		int eno = (Integer)map.get("eno");
		
		System.out.println("sno : " + sno);
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("   SELECT num, name, email, regdate ");
		sql.append("   FROM   kmcontact ");
		if(word.length()>0 && col.equals("subject_content")) {
			sql.append("  	  WHERE subject LIKE "+"'%"+word+"%'  ");
			sql.append("  	  OR content LIKE "+"'%"+word+"%'  ");
		}else if(word.length()>0) {
			sql.append("  	  WHERE "+col+" LIKE "+"'%"+word+"%'  ");
		}
		sql.append("	      ORDER BY num DESC   ");
		sql.append("    	  LIMIT ?,5 ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, sno);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				KmcontactDTO dto = new KmcontactDTO();
				
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setRegdate(rs.getString("regdate"));
				
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
	
	public boolean create(KmcontactDTO dto){
		boolean flag = false;
		Connection con = DBOpen.open();
		
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append("    INSERT INTO kmcontact(");
		sql.append("	name, email, content, regdate,   ip) ");
		sql.append("	VALUES( ");
		sql.append("	?, 		?,   ?,		  curdate(), ?)");
		
		try {
		pstmt=con.prepareStatement(sql.toString());
		pstmt.setString(1, dto.getName());
		pstmt.setString(2, dto.getEmail());
		pstmt.setString(3, dto.getContent());
		pstmt.setString(4, dto.getIp());
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
	
	public KmcontactDTO read(int num) {
		KmcontactDTO dto = null;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append("    SELECT num, name, email, content, ip, regdate ");
		sql.append("    FROM kmcontact WHERE num = ? ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new KmcontactDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setContent(rs.getString("content"));
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
		
	public int getTotal(Map map) { 
			    int total =0;
			    Connection con = DBOpen.open();
			    PreparedStatement pstmt=null; 
			    ResultSet rs = null; 
			 
			    String col = (String)map.get("col"); 
			    String word = (String)map.get("word"); 
			 
			    StringBuffer sql = new StringBuffer(); 
			 
			    sql.append(" SELECT COUNT(*) AS cnt FROM kmcontact "); 
			 
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
	

}
