package com.ob.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.command.Command;
import com.ob.dao.DAO;
import com.ob.vo.RoomVO;

public class TestListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<RoomVO> list = DAO.getList();
		request.setAttribute("test_list", list);

		return "WorkSpace/JaeHyun/test.jsp";
	}

}
