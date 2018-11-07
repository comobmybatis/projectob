package com.ob.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommonCommand implements Command {
	private String type;
	private String path;
	
	public CommonCommand(String type) {
		super();
		this.type = type;
	}

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		switch(type) {
		// 위치기반 서비스 이용약관 페이지
		case "loca":
			path = "loca.jsp";
			break;
		// 개인정보 처리방침 페이지
		case "priv":
			path = "priv.jsp";
			break;
		}
		return path;
	}

}
