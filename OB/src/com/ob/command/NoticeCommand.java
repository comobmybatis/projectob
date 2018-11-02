package com.ob.command;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NoticeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시판 커맨드
		
		
		
		
		
		
		String path = "notice.jsp";
				
		return path;
	}

}
