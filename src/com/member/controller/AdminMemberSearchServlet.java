package com.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.model.vo.Member;
import com.member.service.MemberService;

/**
 * Servlet implementation class AdminMemberSearchServlet
 */
@WebServlet("/mSearch.em")
public class AdminMemberSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String category = request.getParameter("con");
		
		String Keyword = request.getParameter("Keyword");
		
		ArrayList<Member> list = new ArrayList<Member>();
	
		MemberService ms = new MemberService();
		
		list = ms.searchMember(category,Keyword);
		
		if(list != null) {
			System.out.println("검색성공!");
			request.setAttribute("list", list);
			request.getRequestDispatcher("/Semi/mList.em");
		}else {
			System.out.println("검색실패");
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
