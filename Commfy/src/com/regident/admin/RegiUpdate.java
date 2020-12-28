package com.regident.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.regident.dao.RegidentDao;
import com.regident.dao.RegidentVo;

/**
 * Servlet implementation class RegiLoad
 */
@WebServlet("/RegiUpdate.do")
public class RegiUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegiUpdate() {
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
		vo.setUserType(request.getParameter("nusertype"));
		vo.setInterests(request.getParameter("ninterest"));
		vo.setRooms(request.getParameter("nroom"));
		vo.setMBTIcode(request.getParameter("nmbti"));
		vo.setOccupation(request.getParameter("njob"));
		
		int n = dao.update(vo);		
		
		if(n!=0) {
			response.sendRedirect("/Commfy/RegiList.do");
		}else {
			String msg = "글을 수정하지 못했습니다.";
			request.setAttribute("msg", msg);
			String viewPage = "jsp/login/error.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
