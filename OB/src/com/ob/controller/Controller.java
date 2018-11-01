package com.ob.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.command.Command;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("type");

		String path = "";
		Command comm = null;

		// @@@@@@@@@@@@@@@@@@@@@이런식 으로 구현 @@@@@@@@@@@@@@@@@@@@@@@@@@/

		/*
		 * if (type.equals("all")) { comm = new ListCommand(); path = comm.exec(request,
		 * response);
		 * 
		 * // 응답페이지(list.jsp) 지정하고 페이지 전환 // request.getRequestDispatcher(path) //
		 * .forward(request, response); } else if (type.equals("dept")) { path =
		 * "dept.jsp"; // request.getRequestDispatcher(path) // .forward(request,
		 * response); } else if (type.equals("deptList")) { comm = new
		 * DeptListCommand(); path = comm.exec(request, response);
		 * 
		 * } else if (type.equals("fullname"))
		 * 
		 * { path = "fullname.jsp"; // request.getRequestDispatcher(path) //
		 * .forward(request, response); } else if (type.equals("fullnameList")) { comm =
		 * new FullnameListCommand(); path = comm.exec(request, response);
		 * 
		 * } else if (type.equals("search")) { comm = new SearchCommand(); path =
		 * comm.exec(request, response); // request.getRequestDispatcher(path) //
		 * .forward(request, response); }
		 */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
