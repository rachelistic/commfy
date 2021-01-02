package com.board.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDao {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "rachel";
	private String password = "1234";

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private final String POSTS = "SELECT * FROM BOARD ORDER BY POSTID DESC";
	private final String POST = "SELECT * FROM BOARD WHERE POSTID = ?";
	
	private final String HIT_UPDATE = "UPDATE BOARD SET POSTHIT = POSTHIT + 1 WHERE POSTID = ?";
	private final String INSERT ="INSERT INTO BOARD" 
			+ "(POSTID,POSTCATEGORY,POSTTITLE,POSTCONTENT,POSTAREA,POSTRANGE,POSTDATE,"
			+ "EVENTTITLE,EVENTDATE,EVENTTIME,EVENTPLACE,EVENTMIN,EVENTMAX,EVENTFEE,"
			+ "INTEREST,INTERESTSM,EVENTJOIN,POSTWRITER,MBTI)"
			+ "VALUES(PO_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	/*
	 * private final String INSERT = "INSERT INTO MBTITOWN( " +
	 * "ACCOUNT,NICKNAME,USERTYPE,PASSWORD,AREA,GENDER,BLOODTYPE,BIRTHDATE,REGIDATE,MBTICODE)"
	 * + "VALUES(?,?,?,?,?,?,?,?,?,?)";
	 */
//	private final String UPDATE = "UPDATE REGIDENT SET USERTYPE = ?, INTERESTS=?, ROOMS=?, MBTICODE=?, OCCUPATION=? WHERE MBTICODE =?";
//	/* private final String DELETE = "DELETE FROM REGIDENT WHERE ACCOUNT = ?"; */
//	
	
	public BoardDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("DB연결성공!");
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("DB 연결실패!!!!!");
		}
	}



	public ArrayList<BoardVo> selectAll() {
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		BoardVo vo;
		try {
			psmt = conn.prepareStatement(POSTS);
			rs = psmt.executeQuery();
			while (rs.next()) {
				
				vo = new BoardVo();
				
				vo.setPostId(rs.getInt("postid"));
				vo.setPostTitle(rs.getString("posttitle"));
				vo.setPostRange(rs.getString("postrange"));
				
				vo.setPostWriter(rs.getString("postwriter"));
				vo.setPostDate(rs.getDate("postdate"));
				vo.setPostArea(rs.getString("postarea"));
				
				
				vo.setPostContent(rs.getString("postcontent"));
				vo.setPostCategory(rs.getString("postcategory"));
				vo.setPostHit(rs.getInt("posthit"));
			
				vo.setEventTitle(rs.getString("eventtitle"));
				vo.setEventPlace(rs.getString("eventplace"));
				vo.setEventDate(rs.getDate("eventdate"));
				vo.setEventTime(rs.getString("eventtime"));
				vo.setEventMin(rs.getInt("eventmin"));
				vo.setEventMax(rs.getInt("eventmax"));
				vo.setEventFee(rs.getInt("eventfee"));
				
				vo.setInterest(rs.getString("interest"));
				vo.setInterestSm(rs.getString("interestsm"));
			    vo.setEventJoin(rs.getInt("eventjoin"));  
			    
			    vo.setMbti(rs.getString("mbti"));
				
				
				System.out.println("연결확인용");
				System.out.println(rs.getString("posttitle"));
				
				list.add(vo);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close();
		}
		return list;
	}
	
	
	

	public BoardVo select(BoardVo vo) {
		try {
			psmt = conn.prepareStatement(POST);
			psmt.setInt(1, vo.getPostId());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				
				psmt=conn.prepareStatement(HIT_UPDATE);
				psmt.setInt(1, vo.getPostId());
				psmt.execute(); //조회수를 1 증가한다.

				vo = new BoardVo();
				vo.setPostId(rs.getInt("postid"));
				vo.setPostTitle(rs.getString("posttitle"));
				vo.setPostRange(rs.getString("postrange"));
				
				vo.setPostWriter(rs.getString("postwriter"));
				vo.setPostDate(rs.getDate("postdate"));
				vo.setPostArea(rs.getString("postarea"));
				
				
				vo.setPostContent(rs.getString("postcontent"));
				vo.setPostCategory(rs.getString("postcategory"));
				vo.setPostHit(rs.getInt("posthit"));
			
				
				vo.setEventTitle(rs.getString("eventtitle"));
				
				vo.setEventPlace(rs.getString("eventplace"));
				vo.setEventDate(rs.getDate("eventdate"));
				vo.setEventTime(rs.getString("eventtime"));
				vo.setEventMin(rs.getInt("eventmin"));
				vo.setEventMax(rs.getInt("eventmax"));
				vo.setEventFee(rs.getInt("eventfee"));
				
				vo.setInterest(rs.getString("interest"));
				vo.setInterestSm(rs.getString("interestsm"));
				vo.setEventJoin(rs.getInt("eventjoin"));     
				
				vo.setMbti(rs.getString("mbti"));
			
				
				System.out.println("연결확인용");
				System.out.println(rs.getInt("posthit"));
				
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("실패");
		} finally {
			System.out.println("성공?");
			close();
		}
		System.out.println(vo.getPostId());
		return vo;
	}
	
//	public int update(RegidentVo vo) {   //게시글 수정
//		int n = 0;
//		try {
//			psmt = conn.prepareStatement(UPDATE);
//			psmt.setString(1, vo.getUserType());
//			psmt.setString(2, vo.getInterests());
//			psmt.setString(3, vo.getRooms());
//			psmt.setString(4, vo.getMBTIcode());
//			psmt.setString(5, vo.getOccupation());
//			psmt.setString(6, vo.getAccount());
//			n = psmt.executeUpdate();
//			
//		}catch(SQLException e) {
//			e.printStackTrace();
//		}finally {
//			close();
//		}
//		return n;
//	}	
//	
	

	public int insert(BoardVo vo) {
		int n = 0;
		try { 
			psmt = conn.prepareStatement(INSERT);
			
			psmt.setString(1, vo.getPostCategory());
			psmt.setString(2, vo.getPostTitle());
			psmt.setString(3, vo.getPostContent());
			psmt.setString(4, vo.getPostArea());
			psmt.setString(5, vo.getPostRange());
			psmt.setDate(6, vo.getPostDate()); 
			psmt.setString(7, vo.getEventTitle());
			psmt.setDate(8, vo.getEventDate());
			psmt.setString(9, vo.getEventTime());
			psmt.setString(10, vo.getEventPlace());
			
			 psmt.setInt(11, vo.getEventMin()); 
			 psmt.setInt(12, vo.getEventMax());
			 psmt.setInt(13, vo.getEventFee());
			
			psmt.setString(14, vo.getInterest());
			psmt.setString(15, vo.getInterestSm());
			psmt.setInt(16, vo.getEventJoin()); 
			psmt.setString(17, vo.getPostWriter());
			psmt.setString(18, vo.getMbti());
			
			n = psmt.executeUpdate();
			
			System.out.println("등록완료");
		} catch (Exception e) {
			e.printStackTrace();	
			System.out.println("등록실패");
		}finally{
			close();
		}
		return n;
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



	public ArrayList<BoardVo> sortSearch(String sortresult) {

		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		BoardVo vo;	
		
		
		
		return list;


	}



	
}
