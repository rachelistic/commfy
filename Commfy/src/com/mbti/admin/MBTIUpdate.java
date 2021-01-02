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
 * Servlet implementation class MBTIUpdate
 */
@WebServlet("/MBTIUpdate.do")
public class MBTIUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MBTIUpdate() {
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
		vo.setDescription(request.getParameter("desc"));
		vo.setBestMatch100(request.getParameter("bestm"));
		vo.setGoodMatch75(request.getParameter("goodm"));
		vo.setOkayMatch50(request.getParameter("okaym"));
		vo.setBadMatch25(request.getParameter("badm"));
		vo.setWorstMatch0(request.getParameter("worstm"));
		vo.setJobList(request.getParameter("job"));
		
	
		
		int n = dao.update(vo);		
		
		if(n!=0) {
			response.sendRedirect("/Commfy/MBTIList.do");
		}else {
			String msg = "MBTI를 수정하지 못했습니다.";
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
