package com.regident.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class RegidentDao {

		private String driver = "oracle.jdbc.driver.OracleDriver";
		private String url = "jdbc:oracle:thin:@localhost:1521:xe";
		private String user = "rachel";
		private String password = "1234";
		
		private Connection conn;
		private PreparedStatement psmt;
		private ResultSet rs;
		
		//이부분에 sql 작성
//		private final String MEMBERLOGIN = 
//				"SELECT * FROM MEMBER WHERE ACOUNT =? AND PASSWORD =?";
		private final String REGIDENTS = "SELECT * FROM REGIDENT";
		private final String REGIDENT = "SELECT * FROM MEMBER WHERE ACOUNT = ?";
		
		public RegidentDao() {
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, user, password);
			}catch(ClassNotFoundException | SQLException e) {
				System.out.println("DB 연결실패!!!!!");
			}
		}
		
		private void close() {
			try {
				if(rs != null) rs.close();
				if(psmt != null) psmt.close();
				if(conn != null) conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		public ArrayList<RegidentVo> selectAll() {
			ArrayList<RegidentVo> list = new ArrayList<RegidentVo>();
			RegidentVo vo;
			try {
				psmt = conn.prepareStatement(REGIDENTS);
				rs = psmt.executeQuery();
				while(rs.next()) {
					vo = new RegidentVo();
					
					vo.setAccount(rs.getString("account"));
					vo.setNickName(rs.getString("nickname"));
					vo.setUserType(rs.getString("usertype"));
					vo.setPassword(rs.getString("password"));
					vo.setArea(rs.getString("area"));
					vo.setGender(rs.getString("gender"));
					vo.setBloodType(rs.getString("bloodtype"));
					vo.setBirthDate(rs.getDate("birthdate"));
					
					vo.setMind(rs.getInt("mind"));
					vo.setEnergy(rs.getInt("energy"));
					vo.setNature(rs.getInt("nature"));
					vo.setTatics(rs.getInt("tatics"));
					vo.setIdentity(rs.getInt("identity"));
					
					vo.setInterests(rs.getString("interests"));
					vo.setRooms(rs.getString("rooms"));
					vo.setMBTIcode(rs.getString("mbticode"));
					vo.setOccupation(rs.getString("occupation"));
					
					
					
					list.add(vo);
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}
			return list;
		}
		
		
		public RegidentVo select(RegidentVo vo) {
			try {
				psmt = conn.prepareStatement(REGIDENT);
				psmt.setString(1, vo.getAccount());
				rs = psmt.executeQuery();
			if(rs.next()) {
					vo.setAccount(rs.getString("account"));
		vo.setNickName(rs.getString("nickname"));
		vo.setUserType(rs.getString("usertype"));
		vo.setPassword(rs.getString("password"));
		vo.setArea(rs.getString("area"));
		vo.setGender(rs.getString("gender"));
		vo.setBloodType(rs.getString("bloodtype"));
		vo.setBirthDate(rs.getDate("birthdate"));
		
		vo.setMind(rs.getInt("mind"));
		vo.setEnergy(rs.getInt("energy"));
		vo.setNature(rs.getInt("nature"));
		vo.setTatics(rs.getInt("tatics"));
		vo.setIdentity(rs.getInt("identity"));
		
		vo.setInterests(rs.getString("interests"));
		vo.setRooms(rs.getString("rooms"));
		vo.setMBTIcode(rs.getString("mbticode"));
		vo.setOccupation(rs.getString("occupation"));
		
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}
			return vo;
		}
		
//		public MemberVo memberLoginCheck(MemberVo vo) {   //login check
//			try {
//				psmt = conn.prepareStatement(MEMBERLOGIN);
//				psmt.setString(1, vo.getMemberId());
//				psmt.setString(2, vo.getPassword());
//				rs = psmt.executeQuery();
//				if(rs.next()) {
//					vo.setMemberName(rs.getString("membername"));
//					vo.setMemberAuth(rs.getString("memberauth"));
//				}
//			}catch(SQLException e) {
//				e.printStackTrace();
//			}finally {
//				close();
//			}
//			return vo;
//		}
//		
//		public int insert(MemberVo vo) {
//			int n = 0;
//			
//			return n;
//		}
//		
//		public int update(MemberVo vo) {
//			int n = 0;
//			
//			return n;
//		}
//		
//		public int delete(MemberVo vo) {
//			int n = 0;
//			
//			return n;
//		}
//	

	

}