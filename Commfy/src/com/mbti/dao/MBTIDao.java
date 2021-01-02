package com.mbti.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.regident.dao.RegidentVo;




public class MBTIDao {

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "rachel";
	private String password = "1234";

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private final String MBTIS = "SELECT * FROM MBTITOWN";
	private final String MBTI = "SELECT * FROM MBTITOWN WHERE MBTICODE = ?";
	private final String MBTI2 = "SELECT * FROM MBTITOWN WHERE MBTICODE = "
			+ " (SELECT MBTICODE FROM REGIDENT WHERE ACCOUNT=?)";	
	 /* private final String INSERT = "INSERT INTO MBTITOWN( " +
	 * "ACCOUNT,NICKNAME,USERTYPE,PASSWORD,AREA,GENDER,BLOODTYPE,BIRTHDATE,REGIDATE,MBTICODE)"
	 * + "VALUES(?,?,?,?,?,?,?,?,?,?)";
	 */
	private final String UPDATE = "UPDATE MBTITOWN SET DESCRIPTION = ?, BESTMATCH100=?, GOODMATCH75=?, OKAYMATCH50=?, BADMATCH25=?, WORSTMATCH0=?, JOBLIST=? WHERE MBTICODE =?";
//	/* private final String DELETE = "DELETE FROM REGIDENT WHERE ACCOUNT = ?"; */
//	
	
	public MBTIDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("DB연결성공!");
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("DB 연결실패!!!!!");
		}
	}



	public ArrayList<MBTIVo> selectAll() {
		ArrayList<MBTIVo> list = new ArrayList<MBTIVo>();
		MBTIVo vo;
		try {
			psmt = conn.prepareStatement(MBTIS);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new MBTIVo();
				
				vo.setTown(rs.getString("town"));
				vo.setMbtiCode(rs.getString("mbticode"));
				vo.setIsla(rs.getString("isla"));
				vo.setDescription(rs.getString("description"));
				vo.setBestMatch100(rs.getString("bestmatch100"));
				vo.setGoodMatch75(rs.getString("goodmatch75"));
				vo.setOkayMatch50(rs.getString("okaymatch50"));
				vo.setBadMatch25(rs.getString("badmatch25"));
				vo.setWorstMatch0(rs.getString("worstmatch0"));
				vo.setJobList(rs.getString("joblist"));
				
				System.out.println("연결햄?");
				System.out.println(rs.getString("worstmatch0"));
				
				list.add(vo);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close();
		}
		return list;
	}
	
//
	public MBTIVo select(MBTIVo vo) {
		try {
			psmt = conn.prepareStatement(MBTI);
			psmt.setString(1, vo.getMbtiCode());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				

				vo.setTown(rs.getString("town"));
				vo.setMbtiCode(rs.getString("mbticode"));
				vo.setIsla(rs.getString("isla"));
				vo.setDescription(rs.getString("description"));
				vo.setBestMatch100(rs.getString("bestmatch100"));
				vo.setGoodMatch75(rs.getString("goodmatch75"));
				vo.setOkayMatch50(rs.getString("okaymatch50"));
				vo.setBadMatch25(rs.getString("badmatch25"));
				vo.setWorstMatch0(rs.getString("worstmatch0"));
				vo.setJobList(rs.getString("joblist"));
				
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("실패");
		} finally {
			System.out.println("성공?");
			close();
		}
		System.out.println(vo.getMbtiCode());
		return vo;
	}
	
	public MBTIVo select2(RegidentVo vo, MBTIVo vo2) {
		try {
			psmt = conn.prepareStatement(MBTI2);
			psmt.setString(1, vo.getAccount());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				
				vo2.setTown(rs.getString("town"));
				vo2.setMbtiCode(rs.getString("mbticode"));
				vo2.setIsla(rs.getString("isla"));
				vo2.setDescription(rs.getString("description"));
				vo2.setBestMatch100(rs.getString("bestmatch100"));
				vo2.setGoodMatch75(rs.getString("goodmatch75"));
				vo2.setOkayMatch50(rs.getString("okaymatch50"));
				vo2.setBadMatch25(rs.getString("badmatch25"));
				vo2.setWorstMatch0(rs.getString("worstmatch0"));
				vo2.setJobList(rs.getString("joblist"));
				
				
			}System.out.println(rs.getString("town"));
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("MBTIVO select2 실패");
		} finally {
			System.out.println("MBTIVO select2 성공?");
			close();
		}
		
		return vo2;
	}
	
	public int update(MBTIVo vo) {   //게시글 수정
		int n = 0;
		try {
			psmt = conn.prepareStatement(UPDATE);
			psmt.setString(1, vo.getDescription());
			psmt.setString(2, vo.getBestMatch100());
			psmt.setString(3, vo.getGoodMatch75());
			psmt.setString(4, vo.getOkayMatch50());
			psmt.setString(5, vo.getBadMatch25());
			psmt.setString(6, vo.getWorstMatch0());
			psmt.setString(7, vo.getJobList());
			psmt.setString(8, vo.getMbtiCode());
			n = psmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
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
	
}
