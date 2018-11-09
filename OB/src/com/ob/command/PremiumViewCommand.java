package com.ob.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.command.Command;
import com.ob.dao.DAO;
import com.ob.vo.BoardplusVO;

public class PremiumViewCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String resId = request.getParameter("resId");
		//String cPremPage = request.getParameter("cPremPage");
		BoardplusVO premVO = DAO.selectOne(id);
		DAO.selectOne(id)
		
		request.setAttribute("premVO", premVO);
		//request.setAttribute("cPremPage",cPremPage);
		
		return "premiumView.jsp";
	}

}
