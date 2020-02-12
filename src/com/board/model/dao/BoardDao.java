package com.board.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.board.model.vo.Board;
import com.notice.model.vo.Notice;

import static com.member.common.JDBCTemplate.*;

public class BoardDao {
	
	private Properties prop;
	
	public BoardDao() {
		prop = new Properties();
	      
	      String filePath = Board.class.getResource("/config/board-query.properties").getPath();
	      
	      try {
	         prop.load(new FileReader(filePath));       
	         
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	}

	public ArrayList<Board> selectList(Connection con,int currentPage, int limit) {
		  ArrayList<Board> list = null;
	      	      
		  PreparedStatement pstmt = null;
	      
	      ResultSet rset = null;

	      String sql = prop.getProperty("selectList");
	      
	      try {	         
	    	  
	    	  pstmt = con.prepareStatement(sql);
	    	  int startRow = (currentPage-1)*limit +1; 
				int endRow = startRow + limit -1;
				pstmt.setInt(1, endRow);
				pstmt.setInt(2, startRow);
	         
	         rset= pstmt.executeQuery();
	         
	         
	         
	         list = new ArrayList<Board>();
	         
	         while(rset.next()) {
	        	 Board b = new Board();
	            
	        	b.setBno(rset.getInt("BNO"));
				b.setBtype(rset.getInt("BTYPE"));
				b.setBtitle(rset.getString("BTITLE"));
				b.setBcontent(rset.getString("BCONTENT"));
				b.setBwriter(rset.getString("BWRITER"));
				b.setBcount(rset.getInt("BCOUNT"));
				b.setBdate(rset.getDate("BDATE"));	            
	            list.add(b);	            
	            
	           
	         }
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         
	         close(rset);
	         close(pstmt);
	      }
	          
	      
	      return list;
	}

	public int insertBoard(Connection con, Board b) {
		PreparedStatement pstmt = null;
	      
	      int result = 0;
	      
	      String sql = prop.getProperty("insertBoard");
	      
	      try {
	      
	         pstmt = con.prepareStatement(sql);
	         
	         
	         pstmt.setString(1, b.getBtitle());
	         pstmt.setString(2, b.getBcontent());
	         pstmt.setString(3, b.getBwriter());
	         result = pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	      
	         e.printStackTrace();
	      
	      }finally {
	         
	         close(pstmt);
	      
	      }
	      
	      return result;
	}

	public Board selectOne(Connection con, int bno) {
		Board b = null;
        PreparedStatement pstmt = null;
        ResultSet rset = null;   // Select의 결과를 담은 객체
        
        String sql = prop.getProperty("selectOne");
        
        try {
           pstmt = con.prepareStatement(sql);
           pstmt.setInt(1, bno);          
           rset = pstmt.executeQuery();
           
           if(rset.next()) {
              b = new Board();
              
            b.setBno(bno);
			b.setBtype(1);
			b.setBtitle(rset.getString("BTITLE"));
			b.setBcontent(rset.getString("BCONTENT"));
			b.setBwriter(rset.getString("EMP_NAME"));
			b.setBwriterId(rset.getString("BWRITER"));
			b.setBcount(rset.getInt("BCOUNT"));
			b.setBdate(rset.getDate("BDATE"));
              
           }
 
           
           
        }catch(SQLException e){
           e.printStackTrace();
        }finally {
           close(pstmt);
        }
        
        return b;
	}

	public int updateReadCount(Connection con, int bno) {
		int result =0;
	      
	      PreparedStatement pstmt = null;
	      
	      String sql = prop.getProperty("updateReadCount");
	      
	      try {
	      
	         pstmt = con.prepareStatement(sql);
	         pstmt.setInt(1,bno);
	         
	         result = pstmt.executeUpdate();
	         
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         
	         close(pstmt);
	      }
	      return result;
	}

	public int updateBoard(Connection con, Board b) {
		int result = 0;
		   
		   PreparedStatement pstmt = null;
		   
		   String sql = prop.getProperty("updateBoard");
		   
		   try {
			   pstmt = con.prepareStatement(sql);
			   
			   pstmt.setString(1, b.getBtitle());
			   pstmt.setString(2, b.getBcontent());
			   pstmt.setInt(3, b.getBno());
			   
			   result = pstmt.executeUpdate();
			   
		   }catch(SQLException e) {
			   e.printStackTrace();
		   }finally {
			   close(pstmt);
		   }
		
		   return result;
	}

	public int deleteBoard(Connection con, int bno) {
		int result = 0;
		   
		   PreparedStatement pstmt = null;
		   
		   String sql = prop.getProperty("deleteBoard");
		   
		   try {
			   pstmt = con.prepareStatement(sql);		   
			   
			   pstmt.setInt(1, bno);
			   
			   result = pstmt.executeUpdate();
			   
		   }catch(SQLException e) {
			   e.printStackTrace();
		   }finally {
			   close(pstmt);
		   }
		
		   return result;
	}

	public ArrayList<Board> searchBoard(Connection con, String category, String keyword) {
		ArrayList<Board> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch(category) {
		case "writer" : 
			sql = prop.getProperty("searchWriterBoard");
			break;
		case "title" : 
			sql = prop.getProperty("searchTitleBoard");
			break;
		case "content" :
			sql = prop.getProperty("searchContentBoard");
			break;
		}
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, keyword);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setBno(rset.getInt("bno"));
				b.setBtitle(rset.getString("btitle"));
				b.setBcontent(rset.getString("bcontent"));
				b.setBwriter(rset.getString("bwriter"));
				b.setBcount(rset.getInt("bcount"));
				b.setBdate(rset.getDate("bdate"));
				
				list.add(b);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

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
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}
	
}
