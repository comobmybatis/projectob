/* ******************************************************
 ************* 공지사항 게시판 커맨드 **************************
 ********************************************************/

package com.ob.command;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.dao.DAO;
import com.ob.vo.BoardplusVO;

public class NoticeCommand implements Command {
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String board_type = request.getParameter("board_type");
		
		// 게시판 커맨드
		List<BoardplusVO> list = DAO.getList(board_type);
		request.setAttribute("notice", list);
		
		String path = "notice.jsp";
		return path;
	}

}
