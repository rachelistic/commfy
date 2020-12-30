package com.regident.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.dao.BoardDao;
import com.board.dao.BoardVo;
import com.mbti.dao.MBTIDao;
import com.mbti.dao.MBTIVo;
import com.regident.dao.RegidentDao;
import com.regident.dao.RegidentVo;

/**
 * Servlet implementation class RegiEdit
 */
@WebServlet("/MyInfo.do")
public class myInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
//		RegidentDao dao = new RegidentDao();
//		RegidentVo vo = new RegidentVo();
//				
//		vo.setAccount(request.getParameter("account"));
//		vo.setUserType(request.getParameter("nusertype"));
//		vo.setInterests(request.getParameter("ninterest"));
//		vo.setRooms(request.getParameter("nroom"));
//		vo.setMBTIcode(request.getParameter("nmbti"));
//		vo.setOccupation(request.getParameter("njob"));
//				
//		vo = dao.select(vo);
//		
//		request.setAttribute("vo", vo);
//		String viewPage="jsp/admin/residentEdit.jsp";
//		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
//		dispatcher.forward(request, response);
//		
//		
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
