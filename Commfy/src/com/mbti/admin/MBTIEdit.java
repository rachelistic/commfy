package com.mbti.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbti.dao.MBTIDao;
import com.mbti.dao.MBTIVo;

/**
 * Servlet implementation class MBTIEdit
 */
@WebServlet("/MBTIEdit.do")
public class MBTIEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MBTIEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	
	MBTIDao dao = new MBTIDao();
	MBTIVo vo = new MBTIVo();
			
	vo.setMbtiCode(request.getParameter("mbticode"));
	System.out.println(request.getParameter("mbticode"));
	vo = dao.select(vo);
	
	request.setAttribute("vo", vo);
	String viewPage="/jsp/mbti/mbtiEdit.jsp";
	RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	dispatcher.forward(request, response);
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
