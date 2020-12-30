package com.regident.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mbti.dao.MBTIDao;
import com.mbti.dao.MBTIVo;
import com.regident.dao.RegidentDao;
import com.regident.dao.RegidentVo;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		RegidentVo vo = new RegidentVo();
		RegidentDao dao = new RegidentDao();
		
		
		vo.setAccount(request.getParameter("uaccount")); // 넘어왔을때 어디 담겨있낭 id 에서 옴
		vo.setPassword(request.getParameter("upassword"));

		
		
        MBTIDao dao2 = new MBTIDao();
        MBTIVo vo2 = new MBTIVo();
        

		HttpSession session = request.getSession(false); // 세션객체 가져옴.false로 열어달라 요청.
		vo = dao.loginCheck(vo); 
        vo2 = dao2.select2(vo, vo2);
        


		if(vo.getUserType() != "") { 
		session.setAttribute("uaccount", vo.getAccount()); //세션객체에다가 id와 auto를 담아. 
		session.setAttribute("usertype", vo.getUserType());
		session.setAttribute("nickname", vo.getNickName());
		session.setAttribute("mbticode", vo.getMBTIcode());
		}
		request.setAttribute("vo", vo);
		
		
		if(vo2.getTown() != "") { 
			session.setAttribute("town",vo2.getTown());
			session.setAttribute("isla",vo2.getIsla());
			session.setAttribute("desc",vo2.getDescription());
			session.setAttribute("bestm",vo2.getBestMatch100());
			session.setAttribute("goodm",vo2.getGoodMatch75());
			session.setAttribute("okaym",vo2.getOkayMatch50());
			session.setAttribute("badm",vo2.getBadMatch25());
			session.setAttribute("worstm",vo2.getWorstMatch0());
			session.setAttribute("joblist",vo2.getJobList());
		}
		request.setAttribute("vo2", vo2);
	       
		
		
		
		String viewPage ="/jsp/login/welcome.jsp";
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
