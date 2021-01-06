package com.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDao;
import com.board.dao.BoardVo;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

/**
 * Servlet implementation class sortSearch
 */
@WebServlet("/sortSearch.do")
public class sortSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sortSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 request.setCharacterEncoding("utf-8");	        
			String sortresult = request.getParameter("sortresult");
			System.out.println(sortresult);
			
			String[] sortresultArray = sortresult.split(",");
			 
			ArrayList<String> sortresultList = new ArrayList<>();
			
	
			 
		
	        BoardDao dao = new BoardDao();
	        ArrayList<BoardVo> list = dao.sortSearch(sortresultArray);
	        dao.close();
	        //뿌려준다.
	        request.setAttribute("searchList", list);
	        request.setAttribute("sortresult",sortresultList);
	        request.setAttribute("sortresultArray",sortresultArray);
	        String viewPage = "jsp/board/searchList.jsp"; 
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
