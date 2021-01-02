package com.regident.admin;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.regident.dao.RegidentDao;
import com.regident.dao.RegidentVo;

/**
 * Servlet implementation class RegiAdd
 */
@WebServlet("/RegiAdd.do")
public class RegiAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegiAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		RegidentDao dao = new RegidentDao();
		RegidentVo vo = new RegidentVo();
		
		vo.setAccount(request.getParameter("account"));
		vo.setNickName(request.getParameter("nickname"));
		vo.setUserType(request.getParameter("usertype"));
		vo.setPassword(request.getParameter("pw"));
		vo.setArea(request.getParameter("h_area1")); 
		vo.setGender(request.getParameter("gender"));
		vo.setBloodType(request.getParameter("bloodtype"));
		
		vo.setBirthDate(Date.valueOf(request.getParameter("bdate")));
		vo.setRegiDate(Date.valueOf(request.getParameter("currentDate")));
		
		vo.setMBTIcode(request.getParameter("mbti"));
		vo.setInterests(request.getParameter("int"));
	
		int n = dao.insert(vo);
		String viewPage;
		if(n!=0) {
			vo = new RegidentVo();
			vo.getMBTIcode();			
			response.sendRedirect("jsp/login/welcome.jsp");
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
