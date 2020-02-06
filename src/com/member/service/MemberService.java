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
			commit(con);
		}else {
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
	
}
