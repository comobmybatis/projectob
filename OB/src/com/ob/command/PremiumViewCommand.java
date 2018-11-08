package com.ob.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.command.Command;

public class PremiumViewCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("pId");
		String board_type = request.getParameter("board_type");
		
		
		request.setAttribute("pId", id);
		request.setAttribute("board_type", board_type);
		return "premiumView.jsp";
	}

}
