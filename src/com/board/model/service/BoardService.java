package com.board.model.service;

import static com.member.common.JDBCTemplate.close;
import static com.member.common.JDBCTemplate.commit;
import static com.member.common.JDBCTemplate.getConnection;
import static com.member.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.board.model.dao.BoardDao;
import com.board.model.vo.Board;
import com.notice.model.vo.Notice;

public class BoardService {
	
	private BoardDao bDao = new BoardDao();

	public ArrayList<Board> selectList(int currentPage, int limit) {

		Connection con = getConnection();
		
		
		ArrayList<Board> List = bDao.selectList(con,currentPage,limit);
		
		close(con);
		
		return List;
	}

	public int insertBoard(Board b) {
			Connection con = getConnection();
	      
	      int result = bDao.insertBoard(con,b);
	      
	      
	      /*
	       * 0: 실행항 행의 개수 없음
	       * 1이상 : n개의 행 실행
	       * -1:실행중 에러 발생
	       * 
	       * */
	      
	      if(result > 0)commit(con);
	       else rollback(con);
	      
	      close(con);
	      
	      return result;
	}

	public Board selectOne(int bno) {
		Connection con = getConnection();
	      
	      Board b = bDao.selectOne(con,bno);	      
	      
	      if(b != null) {
	         int result = bDao.updateReadCount(con,bno);
	         
	         if(result > 0 )commit(con);
	         else rollback(con);      }
	   
	      close(con);
	   
	      return b;
	}

	public Board updateView(int bno) {
		Connection con = getConnection();
		
		Board b = bDao.selectOne(con,bno);
		
		close(con);
		
		return b;
	}

	public int updateBoard(Board b) {
		Connection con = getConnection();		
		
		int result = bDao.updateBoard(con,b);		
		
		if(result > 0 )commit(con);
        else rollback(con);      
  
		close(con);
  
     	return result;
	}

	public int deleteBoard(int bno) {
		Connection con = getConnection();
		
		int result = bDao.deleteBoard(con,bno);
		
		if(result > 0)commit(con);
		else rollback(con);
		
		close(con);		
		
		return result;
	}

	public ArrayList<Board> searchBoard(String category, String keyword) {
		Connection con = getConnection();
		
		ArrayList<Board> list = null;
		
		if(category.length() > 0) {
			list = bDao.searchBoard(con,category,keyword);
		}else {
			//list = bDao.selectList(con);
		}
		
		return list;
	}

	public int getListCount() {
		Connection con = getConnection();
		int listCount = bDao.getListCount(con);
		
		close(con);
		
		return listCount;
	}
}
