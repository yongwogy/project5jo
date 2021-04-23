package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import model.AdminBean;

public class AdminDAO {
	
	// 싱글톤
	private static AdminDAO instance = new AdminDAO();
	
	public static AdminDAO getInstance() {
		return instance;
	}
	
	// 커넥션 풀
	private Connection getConnection() throws Exception {
		Context init = new InitialContext();
  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
  		return ds.getConnection();
	}
	
	// 총 데이터 갯수
	public int getCount() {
		int result = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			
			String sql = "select count(*) from member";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();	// SQL문 실행
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) try { rs.close(); } catch(Exception e) {}
			if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
			if(con != null) try { con.close(); } catch(Exception e) {}
		}
		
		return result;
	}
	
	// 회원 목록
	public List<AdminBean> getList(int start, int end) {
		List<AdminBean> list = new ArrayList<AdminBean>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			
			String sql = "select * from (select rownum rnum, member.* from ";
				sql += " (select * from member order by reg_date desc) member) ";
				sql += " where rnum >= ? and rnum <= ? ";
				
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs = pstmt.executeQuery();	// SQL문 실행
			
			while(rs.next()) {
				AdminBean member = new AdminBean();
				member.setId(rs.getString("id"));
				member.setPass(rs.getString("pass"));
				member.setName(rs.getString("name"));
				member.setMailid(rs.getString("mailid"));
				member.setDomain(rs.getString("domain"));
				member.setPost(rs.getString("post"));
				member.setAddress(rs.getString("address"));
				member.setBirth(rs.getString("birth"));
				member.setPhone1(rs.getString("phone1"));
				member.setPhone2(rs.getString("phone2"));
				member.setPhone3(rs.getString("phone3"));
				member.setSex(rs.getString("sex"));
				member.setReg_date(rs.getTimestamp("reg_date"));
				member.setGrade(rs.getInt("grade"));
				member.setState(rs.getInt("state"));
				
				list.add(member);
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) try { rs.close(); } catch(Exception e) {}
			if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
			if(con != null) try { con.close(); } catch(Exception e) {}
		}
		
		return list;
	}
}
