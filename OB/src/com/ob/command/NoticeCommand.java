package com.ob.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ob.dao.DAO;
import com.ob.mybatis.PagingNotice;
import com.ob.vo.BoardplusVO;
public class NoticeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시판 커맨드
		PagingNotice p = new PagingNotice();
		
		p.setTotalRecord(DAO.getTotalCount());
		p.setTotalPage();
		
//		System.out.println("전체 건수: " + p.getTotalRecord());
//		System.out.println("전체 페이지 갯수: " + p.getTotalPage());
		
		String cPage = request.getParameter("cPage");
		if (cPage != null) {
			p.setNowPage(Integer.parseInt(cPage));
		}
		
		p.setEnd(p.getNowPage() * p.getNumPerPage());
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
		
//		System.out.println("현재 페이지(nowPage): " + p.getNowPage());
//		System.out.println("시작번호(begin): " + p.getBegin());
//		System.out.println("끝번호(end): " + p.getEnd());
		
		
		int nowPage = p.getNowPage();
		p.setBeginPage((nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1);
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);
		
//		System.out.println("현재 페이지(nowPage): " + p.getNowPage());
//		System.out.println("시작 페이지(beginPage): " + p.getBeginPage() );
//		System.out.println("끝 페이지(endPage): " + p.getEndPage());
		
		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}
		
		Map<String, Integer> map = new HashMap<>();
		
		map.put("begin", p.getBegin());
		map.put("end", p.getEnd());
		System.out.println(request.getParameter("board_type"));
		map.put("board_type", Integer.parseInt(request.getParameter("board_type")));
		
		List<BoardplusVO> list = DAO.getNoticeList(map);
		System.out.println(list);
		
		request.setAttribute("list", list);
		request.setAttribute("cPage", cPage);
		request.setAttribute("pvo", p);
		
		String path = "notice.jsp";
		return path;
	}

}
