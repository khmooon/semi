package com.member.service;

import static com.member.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.member.model.dao.MemberDao;
import com.member.model.exception.MemberException;
import com.member.model.vo.Member;
public class MemberService {
	
	MemberDao mDao = new MemberDao();
	
	public MemberService() {
		
	}

	/**
	 * @param m
	 * @return
	 * @throws MemberException
	 * @작성자 : 문태환
	 * @내용  : 사원 로그인
	 */
	public Member loginMember(Member m) throws MemberException {

		
		Connection con = getConnection();
		
		Member mem = mDao.loginMember(con,m);
		
		return mem;
		
		
	}

	/**
	 * @param m
	 * @return
	 * @throws MemberException
	 * @작성자 : 문태환
	 * @내용  : 사원 개인정보 수정
	 */
	public int memberUpdate(Member m) throws MemberException {

		Connection con = getConnection();
		
		int result = mDao.memberUpdate(con,m);
				
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	/**
	 * @param m
	 * @작성자 : 문태환
	 * @내용  : 관리자 사원추가
	 */
	public void MemberAdd(Member m) {

		Connection con = getConnection();
		
		int result = mDao.memberAdd(con,m);
		
		if(result >0) commit(con);
		else rollback(con);
		
		close(con);
		
		
				
		
	}

	/**
	 * @return
	 * @작성자 : 문태환
	 * @내용  : 관리자 사원목록
	 */
	public ArrayList<Member> MemberList(int currentPage, int limit) {

		Connection con = getConnection();
		
		ArrayList<Member> result = mDao.memberList(con,currentPage,limit);
		
		close(con);
		
		return result;
		
		
	}

	/**
	 * @param no
	 * @return
	 * @작성자 : 문태환
	 * @내용  : 관리자 사원목록 상세보기
	 */
	public Member adminMemberDetail(int no) {

		Member m = new Member();
		
		Connection con = getConnection();
		
		m = mDao.adminMemberDetail(con, no);
		
		close(con);
		
		return m;
	}

	/**
	 * @param m
	 * @작성자 : 문태환
	 * @내용  : 관리자 사원정보 수정
	 */
	public void adminMemberUpdate(Member m) {

		Connection con =getConnection();
		
		int result = mDao.adminMemberUpdate(con,m);
		
		if(result > 0) {
			int result2 = mDao.adminMemberSalary(con,m);
			if(result2 > 0) {
				commit(con);
			}
		}else{
			rollback(con);
		}
		close(con);
		
	}

	/**
	 * @param del
	 * @작성자 :문태환 
	 * @내용  : 관리자 사원삭제
	 */
	public void adminMemberDelete(String[] del) {

		Connection con = getConnection();
		
		int result = mDao.adminMemberDelete(con,del);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
	}
	
	/**
	 * @return
	 * @작성자 :문태환 
	 * @내용  : 총 사원정보 갯수
	 */
	public int getListCount() {
		Connection con = getConnection();
		
		int result = mDao.getListCount(con);

		close(con);
		
		return result;
	}
	
	/**
	  * @Method Name : selectAllList
	  * @작성일 : 2020. 2. 9.
	  * @작성자 : songinseok
	  * @변경이력 : 
	  * @Method 설명 : 모든 사원 정보 부서명으로 sorting해 불러오는 메소드
	  * @return
	  */
	public ArrayList<Member> selectAllList() {
		
		Connection con = getConnection();
		
		ArrayList<Member> list = mDao.selectAllList(con);
		
		close(con);
		
		return list;
	}
	
	public ArrayList<Member> allEmployee(){
		Connection con = getConnection();
		
		ArrayList<Member> allE = mDao.getAllEmployee(con);
		
		close(con);
		
		return allE;
	}
	
	/**
	 * @param category
	 * @param keyword
	 * @return
	 * @작성자 : 문태환 
	 * @내용  : 관리자 사원목록 검색
	 */
	public ArrayList<Member> searchMember(String category, String keyword) {
		Connection con = getConnection();
		
		ArrayList<Member> list = null;
		
		if(category.length() > 0) {
			//list = mDao.adminSearchMember(con,category,keyword);
		}else {
			
		}
		
		return list;
	}
	
}
