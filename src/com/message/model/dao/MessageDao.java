package com.message.model.dao;

import static com.member.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.member.model.dao.MemberDao;
import com.message.model.vo.Message;;

public class MessageDao {

	 private Properties prop;
	   
	   public MessageDao() {
	      prop = new Properties();
	      
	      String filePath = MemberDao.class.getResource("/config/message-query.properties").getPath();
	      
	      try {
	         prop.load(new FileReader(filePath));
	      } catch(FileNotFoundException e) {
	         e.printStackTrace();
	      } catch(IOException e){
	         e.printStackTrace();
	      } 
	   }
	   public ArrayList<Message> allmsglist(Connection con,int emp_no) {
		   
		   ArrayList<Message> list = new ArrayList<Message>();
		   
		   PreparedStatement pstmt =null;
			
			ResultSet rset = null;
			
			String sql = prop.getProperty("allmsglist");
			
			try {
				
				
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1,emp_no);
				
				rset = pstmt.executeQuery();
				
				System.out.println(sql);
				
				while(rset.next()) {
					
					list.add(new Message(
							rset.getInt("MESSAGE_ID"),
							rset.getInt("send_emp_no"),
							rset.getString("send_emp_name"),
							rset.getString("send_dept_name"),
							rset.getString("send_job_name"),
							rset.getString("send_title"),
							rset.getString("send_content"),
							rset.getString("send_date"),
							rset.getInt("receive_emp_no")
							));
				}
				
			     
		      }catch(SQLException e) {
		    	  e.printStackTrace();
		      }
			catch(Exception e) {
		         e.printStackTrace();
		      } finally {
		            close(rset);
		            close(pstmt);
		      }
		   return list;
		   
	   }
	public Message selectOne(Connection con, int msgnum) {
		
					Message msg = new Message();
		
		   			PreparedStatement pstmt =null;
			
					ResultSet rset = null;
					
					try {
						
					String sql = prop.getProperty("selectOne");
					
					pstmt = con.prepareStatement(sql);
					
					pstmt.setInt(1,msgnum);
					
					rset = pstmt.executeQuery();
					
					System.out.println(sql);
					
					
					if(rset.next()) {
						
						msg = new Message(
								rset.getInt("MESSAGE_ID"),
								rset.getInt("send_emp_no"),
								rset.getString("send_emp_name"),
								rset.getString("send_dept_name"),
								rset.getString("send_job_name"),
								rset.getString("send_title"),
								rset.getString("send_content"),
								rset.getString("send_date"),
								rset.getInt("receive_emp_no")
								);
					}
					}catch(SQLException e) {
						e.printStackTrace();
					}finally {
						close(rset);
						close(pstmt);
					}
					
		return msg;
	}
	public int SendMessage(Connection con, Message msg, String receivelist) {
		
		PreparedStatement pstmt =null;
		
		ResultSet rset = null;
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("sendmsg");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1,msg.getSend_emp_no());
			pstmt.setString(2,msg.getSend_emp_name());
			pstmt.setString(3,msg.getSend_dept_name());
			pstmt.setString(4, msg.getSend_job_name());
			pstmt.setString(5, msg.getSend_title());
			pstmt.setString(6, msg.getSend_content());
			pstmt.setInt(7, msg.getReceive_emp_no());
			
			
			System.out.println(sql);
			result = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
			}finally {
			close(pstmt);
		}
		
		return result;
	}
	

	      
}
