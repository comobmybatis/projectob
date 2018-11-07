package com.ob.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.dao.DAO;
import com.ob.vo.BoardplusVO;

public class NoticeWriteOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 관지자 게시물 등록
		
		String chk = request.getParameter("chk");
		String path = null;
		
		if (chk == null) {
			path = "noticeWrite.jsp";
		} else {
			BoardplusVO vo = new BoardplusVO();
			
			vo.setTitle(request.getParameter("title"));
			vo.setContent(request.getParameter("content"));
			
			DAO.noticeInsert(vo);
		}
		
		
		
		return path;
	}

}
