package com.ob.command;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.dao.DAO;
import com.ob.vo.NoticeVO;

public class NoticeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시판 커맨드
		
		List<NoticeVO> list = DAO.getListNotice();
		request.setAttribute("notice", list);
		
		String path = "notice.jsp";
		return path;
	}

}
