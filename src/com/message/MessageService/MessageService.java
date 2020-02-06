package com.message.MessageService;

import static com.member.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.member.model.dao.MemberDao;
import com.message.model.dao.MessageDao;
import com.member.model.exception.MemberException;
import com.member.model.vo.Member;
import com.message.model.vo.Message;;
public class MessageService {

	MessageDao mDao = new MessageDao();
	
	public MessageService() {
		
	}

	public ArrayList<Message> allmsglist(int emp_no) { //사원번호로 해당 메세지들 갖고오긔

		
		Connection con = getConnection();
		
		ArrayList<Message> msg = mDao.allmsglist(con,emp_no);
		
		return msg;
	}
	public Message selectOne(int msgnum) {
		Connection con = getConnection();
		
		Message msg = mDao.selectOne(con,msgnum);
		
		return msg;
	}
}
