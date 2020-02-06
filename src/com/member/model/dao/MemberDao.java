package com.member.model.dao;

import static com.member.common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Array;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.util.StringTokenizer;

import com.member.model.exception.MemberException;
import com.member.model.vo.Member;

public class MemberDao {

	 private Properties prop;
	   
	   public MemberDao() {
	      prop = new Properties();
	      
	      String filePath = MemberDao.class.getResource("/config/member-query.properties").getPath();
	      
	      try {
	         prop.load(new FileReader(filePath));
	      } catch(FileNotFoundException e) {
	         e.printStackTrace();
	      } catch(IOException e){
	         e.printStackTrace();
	      } 
	      
	   }
	
	
	
	/**
	 * @param con
	 * @param m
	 * @return
	 * @throws MemberException
	 * @작성자 : 문태환
	 * @내용  : 사원로그인
	 */
	public Member loginMember(Connection con, Member m) throws MemberException {

		PreparedStatement pstmt =null;

		ResultSet rset = null;


		Member mem = null;
		try {
			
			String sql = prop.getProperty("selectMember");
		

			pstmt = con.prepareStatement(sql);
		
			
			pstmt.setString(1, m.getEmpId());
			pstmt.setString(2, m.getEmpPwd());
			
			
			rset = pstmt.executeQuery();
			
			
			if(rset.next()) {
				
				mem = new Member();
				
				mem.setEmpNo(rset.getInt("EMP_NO"));
				mem.setEmpName(rset.getString("EMP_NAME"));
				mem.setEmpId(rset.getString("EMP_ID"));
				mem.setEmpPwd(rset.getString("EMP_PWD"));
				mem.setEmpSsn(rset.getString("EMP_SSN"));
				mem.setDeptName(rset.getString("DEPT_NAME"));
				mem.setJobName(rset.getString("JOB_NAME"));
				mem.setPhone(rset.getString("PHONE_NO"));
				mem.setHome(rset.getString("HOME_NO"));
				mem.setAddress(rset.getString("ADDRESS"));
				mem.setEmail(rset.getString("EMAIL"));
				mem.setEntYN(rset.getString("ENT_YN"));	
				
			}
			
		     
	      } catch(Exception e) {
	         throw new MemberException(e.getMessage());
	      } finally {
	            close(rset);
	            close(pstmt);
	            
	      }
		return mem;
	}



	/**
	 * @param con
	 * @param m
	 * @return
	 * @throws MemberException
	 * @작성자 : 문태환
	 * @내용  : 사원 개인정보 수정
	 */
	public int memberUpdate(Connection con, Member m) throws MemberException {

		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String sql = prop.getProperty("memberUpdate");
		
		try {

			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, m.getPhone());
			pstmt.setString(2, m.getEmail());
			pstmt.setString(3, m.getEmpPwd());
			pstmt.setString(4, m.getEmpId());
			
	     	result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			
		 throw new MemberException(e.getMessage());
			
			
		}finally {
			close(pstmt);
			
		}
		
		
		return result;
	}



	/**
	 * @param con
	 * @param m
	 * @return
	 * @작성자 : 문태환
	 * @내용  : 관리자 사원정보 추가
	 */
	public int memberAdd(Connection con, Member m) {
		
		int result =0;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = prop.getProperty("MemberAdd");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, m.getEmpName());
			pstmt.setString(2, m.getEmpId());
			pstmt.setString(3, m.getEmpPwd());
			pstmt.setString(4, m.getEmpSsn());
			pstmt.setString(5, m.getDeptName());
			pstmt.setString(6, m.getJobName());
			pstmt.setString(7, m.getPhone());
			pstmt.setString(8, m.getHome());
			pstmt.setString(9, m.getAddress());
			pstmt.setString(10, m.getEmail());
			pstmt.setString(11, "N");
			
			result = pstmt.executeUpdate();
				
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}



	/**
	 * @param con
	 * @return
	 * @작성자 : 문태환
	 * @내용  : 관리자 사원목록 
	 */
	public ArrayList<Member> memberList(Connection con,int currentPage,int limit) {

		Member m = null;
		
		ArrayList<Member> list = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("memberList");
		
		try {
		
		list = new ArrayList<Member>();	
		
		pstmt = con.prepareStatement(sql);
		int startRow = (currentPage-1)*limit+1;
		int endRow = startRow+limit-1;
		
		pstmt.setInt(1, endRow);
		pstmt.setInt(2, startRow);
		
		rset = pstmt.executeQuery();
		
		while(rset.next()) {
			
		m = new Member();		
		
		m.setEmpNo(rset.getInt("EMP_NO"));	
		m.setEmpName(rset.getString("EMP_NAME"));
		m.setEmpSsn(rset.getString("SUBSTR(EMP_SSN,1,6)"));
		m.setDeptName(rset.getString("DEPT_NAME"));
		m.setJobName(rset.getString("JOB_NAME"));
		m.setHireDate(rset.getDate("HIRE_DATE"));
		m.setEntDate(rset.getDate("ENT_DATE"));
				list.add(m);
		}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}



	/**
	 * @param con
	 * @param no
	 * @return
	 * @작성자 : 문태환
	 * @내용  : 관리자 사원정보 상세보기
	 */
	public Member adminMemberDetail(Connection con, int no) {

		
		Member m = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
				
		String sql = prop.getProperty("adminMemberDetail");
		
		try {
		
		m = new Member();	
			
		pstmt = con.prepareStatement(sql);
		
		pstmt.setInt(1, no);

		rset = pstmt.executeQuery();
		
		if(rset.next()) {
			
			m.setEmpNo(rset.getInt("EMP_NO"));
			m.setEmpName(rset.getString("EMP_NAME"));
			m.setEmpId(rset.getString("EMP_ID"));
			m.setEmpSsn(rset.getString("EMP_PWD"));
			m.setEmpSsn(rset.getString("EMP_SSN"));
			m.setDeptName(rset.getString("DEPT_NAME"));
			m.setJobName(rset.getString("JOB_NAME"));
			m.setPhone(rset.getString("PHONE_NO"));
			m.setHome(rset.getString("HOME_NO"));
			m.setAddress(rset.getString("ADDRESS"));
			m.setEmail(rset.getString("EMAIL"));
			m.setEntYN(rset.getString("ENT_YN"));
		
		}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}



	/**
	 * @param con
	 * @param m
	 * @return
	 * @작성자 : 문태환
	 * @내용  : 관리자 사원정보 수정
	 */
	public int adminMemberUpdate(Connection con, Member m) {

		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String sql = "";
		
		try {
			
			if(m.getEntYN().equals("Y")) {
				//ENT_YN이 Y로 바뀌고
				//ENT_DATE가 퇴사날짜로 변경
				sql = prop.getProperty("adminMemberUpdate");
			}else{
				//ENT_YN이 N으로 변경
				//ENT_DATE가 NULL로 변경
				sql = prop.getProperty("adminMemberUpdate2");
			}
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, m.getEmpName());
		pstmt.setString(2, m.getEmpSsn());
		pstmt.setString(3, m.getEntYN());
		pstmt.setString(4, m.getAddress());
		pstmt.setString(5, m.getPhone());
		pstmt.setString(6, m.getHome());
		pstmt.setString(7, m.getEmpId());
		pstmt.setString(8, m.getEmpPwd());
		pstmt.setString(9, m.getDeptName());
		pstmt.setString(10,m.getJobName());
		pstmt.setInt(11, m.getEmpNo());
			
		result = pstmt.executeUpdate();	
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}



	/**
	 * @param con
	 * @param del
	 * @return
	 * @작성자 : 문태환
	 * @내용  : 관리자 사원정보 삭제
	 */
	public int adminMemberDelete(Connection con, String[] del) {

		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("adminMemberDelete");
		for(int i =0;i<del.length;i++)
		{
		int A = Integer.parseInt(del[i]);
		
		try {
		
			pstmt = con.prepareStatement(sql);
			
			System.out.println(sql);

			pstmt.setInt(1, A);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
	}
		return result;
	}



	/**
	 * @param con
	 * @return
	 * @작성자 : 문태환
	 * @내용  : 총 사원정보 갯수
	 */
	public int getListCount(Connection con) {

		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		
		try {
			
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}

}
