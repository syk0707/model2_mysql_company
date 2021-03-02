package model.kmmember;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import utility.DBClose;
import utility.DBOpen;

public class KmmemberDAO {
	public String getGrade(String id) {
		String grade = null;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT grade FROM kmmember ");
		sql.append(" WHERE id = ? ");
		
		try {
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1,id);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				grade = rs.getString("grade");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(con, pstmt, rs);
		}
		return grade;
	}
	
	public boolean loginCheck(Map map) {
		boolean flag = false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String id = (String)map.get("id");
		String pw = (String)map.get("pw");
		
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT count(*) FROM kmmember ");
		sql.append(" WHERE id=? ");
		sql.append(" AND pw=? ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int cnt = rs.getInt(1);
				if(cnt>0) flag= true;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 finally {
		DBClose.close(con, pstmt, rs);
	}
	return flag;
	}
	
	public KmmemberDTO read(String id) {
		KmmemberDTO dto = null;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append("    SELECT * FROM kmmember    ");
		sql.append("    WHERE id = ?    ");
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new KmmemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(con, pstmt, rs);
		}
		
		return dto;
	}
	
	public boolean checkPasswd(String id, String chkpasswd) {

		boolean flag = false;
		
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String passwd = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT pw ");
		sql.append(" FROM	kmmember ");
		sql.append(" WHERE id=? ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);

			rs=pstmt.executeQuery();
			if(rs.next()) {
				passwd = rs.getString(1);
			}
			if (passwd.equals(chkpasswd))flag = true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			flag = false;
		} catch (NullPointerException e){
			// TODO Auto-generated catch block
			flag = false;
		}
		finally {
			DBClose.close(con, pstmt, rs);
		}

		return flag;
	}
	
	public boolean updatePasswd(String id, String npasswd) {
		boolean flag = false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE kmmember ");
		sql.append(" SET	pw = ?");
		sql.append(" WHERE	id = ? ");

		try {
			pstmt = con.prepareStatement(sql.toString());
			int i=1;
			pstmt.setString(i++, npasswd);
			pstmt.setString(i++, id);

			int cnt = pstmt.executeUpdate();

			if (cnt > 0)
				flag = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(con, pstmt);
		}
		
		return flag;
	}
}
