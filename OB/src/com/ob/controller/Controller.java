package com.ob.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.command.AgreeCommand;
import com.ob.command.Command;
import com.ob.command.EventCommand;
import com.ob.command.JoinCommand;
import com.ob.command.LocaCommand;
import com.ob.command.LocationCommand;
import com.ob.command.LoginCheckCommand;
import com.ob.command.MainCommand;
import com.ob.command.NoticeCommand;
import com.ob.command.PremiumCommand;
import com.ob.command.PremiumOneCommand;
import com.ob.command.PremiumWriteCommand;
import com.ob.command.PrivCommand;
import com.ob.command.QueCommand;
import com.ob.command.MorequeCommand;
import com.ob.command.Test1Command;
import com.ob.command.Test2Command;
import com.ob.command.TestListCommand;
import com.ob.command.LoginCommand;


@WebServlet("/controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("type");

		String path = "";
		Command comm = null;
		
		if (type.equals("list")) {
			comm = new TestListCommand();
		} else if (type.equals("notice")) {
			comm = new NoticeCommand();
		} else if (type.equals("moreQue")) {
			comm = new MorequeCommand();
		} else if (type.equals("que")) {
			comm = new QueCommand();
		} else if (type.equals("premium")) {
			comm = new PremiumCommand();
		} else if (type.equals("premiumWrite")) {
			comm = new PremiumWriteCommand();
		} else if (type.equals("premiumOne")) {
			comm = new PremiumOneCommand();
		} else if (type.equals("agree")) {
			comm = new AgreeCommand();
		} else if (type.equals("loca")){
			comm = new LocaCommand();
		} else if (type.equals("priv")){
			comm = new PrivCommand();
		} else if (type.equals("location")) {
			comm = new LocationCommand();
		} else if (type.equals("list")) {
			comm = new TestListCommand();
		} else if (type.equals("event")) {
			comm = new EventCommand();
		} else if (type.equals("main")) {
			comm = new MainCommand();
		} else if (type.equals("login")){
			comm = new LoginCommand();
		} else if (type.equals("loginCheck")){
			comm = new LoginCheckCommand();
		} else if (type.equals("test1")){
			comm = new Test1Command();
		}else if (type.equals("test2")){
			comm = new Test2Command();
		}else if (type.equals("join")) {
			comm = new JoinCommand();
		}
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
