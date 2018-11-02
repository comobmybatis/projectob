package com.ob.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PremiumCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프리미엄 게시판 커맨드
		String path = "premium.jsp";
		return path;
	}

}
