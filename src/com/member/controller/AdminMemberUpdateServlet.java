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
 * Servlet implementation class AdminMemberUpdateServlet
 */
@WebServlet("/mUpdate.em")
public class AdminMemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
	/**
	 *@작성자 : 문태환
	 *@내용 : 관리자 사원정보 수정
	 *
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member m = new Member();
		
		int emp_no = Integer.parseInt(request.getParameter("no"));
		String name = request.getParameter("name");
		String ssn = request.getParameter("ssn");
		String entyn = request.getParameter("entyn");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String home = request.getParameter("home");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String dept = request.getParameter("dept");
		String job = request.getParameter("job");
		String bank = request.getParameter("bank");
		String bankNo = request.getParameter("bankno");
		int salary = Integer.parseInt(request.getParameter("salary"));
		double bonus = Double.parseDouble(request.getParameter("bonus"));

		System.out.println(bank);
		
		m.setEmpNo(emp_no);
		m.setEmpName(name);
		m.setEmpSsn(ssn);
		m.setEntYN(entyn);
		m.setAddress(address);
		m.setEmail(email);
		m.setPhone(phone);
		m.setHome(home);
		m.setEmpId(id);
		m.setEmpPwd(pwd);
		m.setDeptName(dept);
		m.setJobName(job);
		m.setBank(bank);
		m.setBankNo(bankNo);
		m.setSalary(salary);
		m.setBonus(bonus);
		
		
		MemberService ms = new MemberService();

		try {
			
			ms.adminMemberUpdate(m);
			System.out.println("수정성공");
			request.setAttribute("member", m);
			request.getRequestDispatcher("mDetail.em").forward(request, response);
		
		} catch (Exception e) {
			System.out.println("수정실패");
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
