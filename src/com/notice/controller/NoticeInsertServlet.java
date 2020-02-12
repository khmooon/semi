package com.notice.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.notice.model.service.NoticeService;
import com.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeInsertServlet
 */
@WebServlet("/nInsert.no")
public class NoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ntitle = request.getParameter("title");
		String writer = request.getParameter("empId");
		String content = request.getParameter("content");		
		String date = request.getParameter("date");
		
		System.out.println(ntitle);
		System.out.println(writer);
		System.out.println(content);
		System.out.println(date);
		
		Date writeDate = null;
		
		if(date != "" && date != null) {
			String[] dateArr = date.split("-");
			int[] intArr = new int[dateArr.length];
			
			for(int i=0; i<dateArr.length; i++) {
				intArr[i] = Integer.parseInt(dateArr[i]);
			}
			
			writeDate = new Date(new GregorianCalendar(
					intArr[0],intArr[1]-1,intArr[2]).getTimeInMillis());
		}else {
			writeDate = new Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Notice n = new Notice();
		
		n.setNtitle(ntitle);
		n.setNwriter(writer);
		n.setNcontent(content);
		n.setNdate(writeDate);
		
		
		
		NoticeService ns = new NoticeService();
		
		int result = ns.insertNotice(n);
		
		if(result > 0) {
			System.out.println("등록!!");
			response.sendRedirect("selectList.no");
		}else {
			request.setAttribute("msg", "게시판 등록 실패!");
			
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
