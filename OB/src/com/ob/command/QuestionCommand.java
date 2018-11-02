package com.ob.command;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.command.Command;

public class QuestionCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자주 묻는 질문 게시판 커맨드
		String path = "question.jsp";
		
		return path;
	}

}
