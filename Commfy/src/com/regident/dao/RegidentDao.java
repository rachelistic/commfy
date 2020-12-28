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

	// 이부분에 sql 작성
//		private final String MEMBERLOGIN = 
//				"SELECT * FROM MEMBER WHERE ACOUNT =? AND PASSWORD =?";
	private final String REGIDENTS = "SELECT * FROM REGIDENT";
	private final String REGIDENT = "SELECT * FROM REGIDENT WHERE ACCOUNT = ?";
	private final String INSERT = "INSERT INTO REGIDENT( "
			+ "ACCOUNT,NICKNAME,USERTYPE,PASSWORD,AREA,GENDER,BLOODTYPE,BIRTHDATE,REGIDATE,MBTICODE)"
			+ "VALUES(?,?,?,?,?,?,?,?,?,?)";
	private final String UPDATE = "UPDATE REGIDENT SET USERTYPE = ?, INTERESTS=?, ROOMS=?, MBTICODE=?, OCCUPATION=? WHERE ACCOUNT =?";
	
	
	public RegidentDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("DB 연결실패!!!!!");
		}
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<RegidentVo> selectAll() {
		ArrayList<RegidentVo> list = new ArrayList<RegidentVo>();
		RegidentVo vo;
		try {
			psmt = conn.prepareStatement(REGIDENTS);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new RegidentVo();

				vo.setAccount(rs.getString("account"));
				vo.setNickName(rs.getString("nickname"));
				vo.setUserType(rs.getString("usertype"));
				vo.setPassword(rs.getString("password"));
				vo.setArea(rs.getString("area"));
				vo.setGender(rs.getString("gender"));
				vo.setBloodType(rs.getString("bloodtype"));
				vo.setBirthDate(rs.getDate("birthdate"));
				vo.setRegiDate(rs.getDate("regidate"));

				vo.setMind(rs.getInt("mind"));
				vo.setEnergy(rs.getInt("energy"));
				vo.setNature(rs.getInt("nature"));
				vo.setTatics(rs.getInt("tatics"));
				vo.setMBTIcode(rs.getString("mbticode"));

				vo.setInterests(rs.getString("interests"));
				vo.setRooms(rs.getString("rooms"));

				vo.setOccupation(rs.getString("occupation"));

				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public RegidentVo select(RegidentVo vo) {
		try {
			psmt = conn.prepareStatement(REGIDENT);
			psmt.setString(1, vo.getAccount());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				vo.setAccount(rs.getString("account"));
				vo.setNickName(rs.getString("nickname"));
				vo.setUserType(rs.getString("usertype"));
				vo.setPassword(rs.getString("password"));
				vo.setArea(rs.getString("area"));
				vo.setGender(rs.getString("gender"));
				vo.setBloodType(rs.getString("bloodtype"));
				vo.setBirthDate(rs.getDate("birthdate"));
				vo.setRegiDate(rs.getDate("regidate"));
				vo.setMind(rs.getInt("mind"));
				vo.setEnergy(rs.getInt("energy"));
				vo.setNature(rs.getInt("nature"));
				vo.setTatics(rs.getInt("tatics"));
				vo.setMBTIcode(rs.getString("mbticode"));
				vo.setInterests(rs.getString("interests"));
				vo.setRooms(rs.getString("rooms"));
				vo.setOccupation(rs.getString("occupation"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("실패");
		} finally {
			System.out.println("성공?");
			close();
		}
		System.out.println(vo.getAccount());
		return vo;
	}

	public int insert(RegidentVo vo) {
		int n = 0;
		try {

			psmt = conn.prepareStatement(INSERT);
			psmt.setString(1, vo.getAccount());
			psmt.setString(2, vo.getNickName());
			psmt.setString(3, vo.getUserType());
			psmt.setString(4, vo.getPassword());
			psmt.setString(5, vo.getArea());
			psmt.setString(6, vo.getGender());
			psmt.setString(7, vo.getBloodType());
			psmt.setDate(8, vo.getBirthDate());
			psmt.setDate(9, vo.getRegiDate());
			psmt.setString(10, vo.getMBTIcode());
			
			n = psmt.executeUpdate();
			System.out.println("가입완료");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("가입실패");
		} finally {
			close();
		}
		return n;
	}

	
	public int update(RegidentVo vo) {   //게시글 수정
		int n = 0;
		try {
			psmt = conn.prepareStatement(UPDATE);
			psmt.setString(1, vo.getUserType());
			psmt.setString(2, vo.getInterests());
			psmt.setString(3, vo.getRooms());
			psmt.setString(4, vo.getMBTIcode());
			psmt.setString(5, vo.getOccupation());
			
			n = psmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return n;
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
