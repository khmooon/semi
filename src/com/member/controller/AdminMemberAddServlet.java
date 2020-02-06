package com.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.model.vo.Member;
import com.member.service.MemberService;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/madd.em")
public class AdminMemberAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	
	/**
	 * @작성자 : 문태환
	 * @내용 : 관리자 회원추가
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String ssn = request.getParameter("ssn");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String home = request.getParameter("home");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String dept = request.getParameter("dept");
		String job = request.getParameter("job");
		
		
		Member m = new Member(name, id, pwd, ssn, dept, job, phone, home, address, email);
		
		MemberService ms = new MemberService();
		
		try {
			
			ms.MemberAdd(m);

			System.out.println("회원가입 완료");

			response.sendRedirect("mList.em");
			
		} catch (Exception e) {

			System.out.println("회원가입 실패");
			
			request.setAttribute("msg", "사원추가 실패입니다!!");
			request.setAttribute("exception", e);
			
//			request.getRequestDispatcher("views/common/errorPage.jsp");
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
