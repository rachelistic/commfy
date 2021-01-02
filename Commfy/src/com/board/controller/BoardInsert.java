package com.board.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDao;
import com.board.dao.BoardVo;


/**
 * Servlet implementation class BoardUpdate
 */
@WebServlet("/BoardInsert.do")
public class BoardInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		

		vo.setPostWriter(request.getParameter("pwriter"));
		vo.setMbti(request.getParameter("pmbti"));
		vo.setPostCategory(request.getParameter("pcategory"));
		vo.setPostTitle(request.getParameter("ptitle"));
		vo.setPostContent(request.getParameter("pcontent"));
		vo.setPostArea(request.getParameter("h_area1"));
		vo.setPostRange(request.getParameter("prange"));
		
		vo.setPostDate(Date.valueOf(request.getParameter("currentDate")));
			 
		vo.setEventTitle(request.getParameter("ptitle"));
		vo.setEventDate(Date.valueOf(request.getParameter("edate"))); 
		vo.setEventTime(request.getParameter("etime"));
		vo.setEventPlace(request.getParameter("eplace"));
		
		vo.setEventMin(Integer.parseInt(request.getParameter("emin")));
		vo.setEventMax(Integer.parseInt(request.getParameter("emax")));
		vo.setEventFee(Integer.parseInt(request.getParameter("efee")));
		
		vo.setInterest(request.getParameter("interest"));
		vo.setInterestSm(request.getParameter("interestsm"));
		vo.setEventJoin(Integer.parseInt(request.getParameter("ejoin")));
		
	
		int n = dao.insert(vo);
		String viewPage;
		if(n!=0) {
					
			response.sendRedirect("/Commfy/BoardList.do");
			System.out.println("등록되었습니당");
		
					
		}else {
			String msg = "데이터 베이스에 정상적으로 입력하지 못했습니다.";
			request.setAttribute("msg",msg);
			viewPage = "jsp/login/error.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
			
			System.out.println("가입 실패!");
			
		}request.setAttribute("vo", vo);
	}
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
