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
		
		PremiumVO vo1 = new PremiumVO("pidx1", "idx1", "image1", "file_name1", "ori_name1", "title1", "writer1", "id1"
				, "summary1", "content1", "regdate1", "usedate1", "email1", "hit1");
		PremiumVO vo2 = new PremiumVO("pidx2", "idx2", "image2", "file_name2", "ori_name2", "title2", "writer2", "id2"
				, "summary2", "content2", "regdate2", "usedate2", "email2", "hit2");
		PremiumVO vo3 = new PremiumVO("pidx3", "idx3", "image3", "file_name3", "ori_name3", "title3", "writer3", "id3"
				, "summary3", "content3", "regdate3", "usedate3", "email3", "hit3");
		
		List<PremiumVO> list = new ArrayList<>();
		list.add(vo1);
		list.add(vo2);
		list.add(vo3);

		request.setAttribute("pList", list);
		
		/* ******************페이징처리*******************
		
		//프리미엄 후기 현재 페이지
		PagingPremium p = new PagingPremium();
		//p.setTotalReview(DAO.getTotalPremium());
		p.setTotalReview(list.size());
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
		
		List<PremiumVO> pPageList = DAO.getPremPageList(map);
		
		request.setAttribute("pPageList", pPageList);
		request.setAttribute("cPremPage", cPage);
		request.setAttribute("premPvo", p);
		 ********************************************** */
		
		System.out.println("list : " + request.getAttribute("pList"));
		
		return "premium.jsp";
	}

}
