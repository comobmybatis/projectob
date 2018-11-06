package com.ob.command;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.dao.DAO;
import com.ob.mybatis.PagingPremium;
import com.ob.vo.PremiumVO;

public class PremiumCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프리미엄 후기 게시판 커맨드
		//List<com.ob.vo.premiumVO> list = DAO.getPremium();
		
		/* ******************페이징처리*******************
		 ********************************************** */
		
		//프리미엄 후기 현재 페이지
		PagingPremium p = new PagingPremium();
		p.setTotalReview(DAO.getTotalPremium());
		p.computeTotalPage();
		
		String cPage = request.getParameter("cPremPage");
		if(cPage != null){
			p.setNowPage(Integer.parseInt(cPage));
		}
		
		p.setEnd(p.getNowPage()*p.getReviewPerPage());
		p.setBegin(p.getEnd()-p.getReviewPerPage()+1);
		
		p.setBeginPage((p.getNowPage()-1)/p.getPagePerBlock()*p.getPagePerBlock()+1);
		p.setEndPage(p.getBeginPage()+p.getPagePerBlock()-1);
		
		if(p.getEndPage()>p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}
		
		Map<String,Integer> map = new HashMap<>();
		map.put("begin", p.getBegin());
		map.put("end", p.getEnd());
		map.put("bbs_type", 3);
		
		List<PremiumVO> pPageList = DAO.getPremPageList(map);
		
		request.setAttribute("pPageList", pPageList);
		request.setAttribute("cPremPage", cPage);
		request.setAttribute("premPvo", p);
		
		//System.out.println("list : " + request.getAttribute("pList"));
		
		return "premium.jsp";
	}

}
