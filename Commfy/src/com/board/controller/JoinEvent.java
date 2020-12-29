package com.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinEvent
 */
@WebServlet("/JoinEvent.do")
public class JoinEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinEvent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		누르면 참가하기 하나 늘려서 dao에서 join 버튼으로 돌린다. 
	//  이미 참가하지 않은 사람만 가능, 디비에 저장?
	//  참가한 사람은 참석 불가. 디비에서 지움? 
	// 
	//여기컨트롤러로 와. board에서 1추하가는데 최대 인원 밑으로만,
	
	//멤버에 참가 이벤트로 저장하는게 좋을것 같넹.
	//멤버에 참가한 postid를 넣었다 뺏다.
	//참가버튼 누리면 멤버의 참여이벤트 컬럼에서 참석했다가 지워짐.
		//쉼표로 여러개 가능?
	//멤버 테이블에 event 컬럼 설정해야할것같음 
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
