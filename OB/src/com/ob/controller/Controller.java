package com.ob.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.command.AgreeCommand;
import com.ob.command.Command;
import com.ob.command.CommonCommand;
import com.ob.command.EventCommand;
import com.ob.command.JoinCommand;
import com.ob.command.LocationCommand;
import com.ob.command.LoginCheckCommand;
import com.ob.command.LoginCommand;
import com.ob.command.MainCommand;
import com.ob.command.MorequeCommand;
import com.ob.command.NoticeCommand;
import com.ob.command.NoticeWriteOkCommand;
import com.ob.command.PremiumCommand;
import com.ob.command.PremiumOneCommand;
import com.ob.command.PremiumWriteCommand;
import com.ob.command.QueCommand;
import com.ob.command.Test1Command;
import com.ob.command.Test2Command;
import com.ob.command.joincheckCommand;


@WebServlet("/controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("type");
		System.out.println("type:"+ type);
		String path = "";
		Command comm = null;
		
		if (type.equals("notice")) {
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
		} else if (type.equals("location")) {
			comm = new LocationCommand();
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
		} else if (type.equals("test2")){
			comm = new Test2Command();
		} else if (type.equals("loca")){
			comm = new CommonCommand(type);
		} else if (type.equals("priv")){
			comm = new CommonCommand(type);
		} else if (type.equals("noticeWrite")){
			comm = new CommonCommand(type);
		} else if (type.equals("noticeWriteOk")){
			comm = new NoticeWriteOkCommand();
		}else if (type.equals("join")) {
			comm = new JoinCommand();
		}else if (type.equals("joincheck")) {
			comm = new joincheckCommand();
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
