package com.ob.command;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import com.ob.dao.DAO;
import com.ob.vo.BoardplusVO;

public class queWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String chk = request.getParameter("write_chk"); 
		String User = request.getParameter("user_id");
		String bType = request.getParameter("board_type");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String date = request.getParameter("write_date");
		String count = request.getParameter("read_count");
		
		String path = null;
		
		if (chk == null) {
			path = "queWrite.jsp";
		} else {
			BoardplusVO vo = new BoardplusVO();
			

			vo.setBoard_type(bType);
			vo.setUser_id(User);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setWrite_date(date);
			vo.setRead_count(count);
			
			DAO.noticeInsert(vo);
			
			path = "controller?type=que&board_type=3";
		}
		return path;
	

	}

}
