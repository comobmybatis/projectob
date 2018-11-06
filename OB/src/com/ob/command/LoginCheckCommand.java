package com.ob.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.command.Command;
import com.ob.dao.DAO;
import com.ob.vo.UserVO;

public class LoginCheckCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String result="";
		
		System.out.println(id + pwd);
		UserVO uvo = DAO.checkId(id);

		if(uvo==null) {
			result = "loginFailed.jsp?errorType=nullId";
		} else {
			String pwd1 = uvo.getPassword();
			if(!pwd.equals(pwd1)) {			//java에서는 String 값의 비교에서 ==이 아닌 equals를 사용해야 한다.
				result = "loginFailed.jsp?errorType=wrongPwd";
			} else {
				result = "main.jsp";
				//request.getSession().setAttribute("account", id);
				//request.getSession().setAttribute("pwd", pwd);
				request.getSession().setAttribute("uservo", uvo);
				
				//UserVO uvo2 = (UserVO)request.getSession().getAttribute("uservo");
				//String id3 = uvo2.getAccount();
			}
		}
		return result;
		
		
		/*
		if(uvo==null) return "loginFailed.jsp?errorType=nullId";
		
		String pwd1 = uvo.getPassword();
		
		if(!pwd.equals(pwd1)) return "loginFailed.jsp?errorType=wrongPwd";
		
		result = "main.jsp";
		
		request.getSession().setAttribute("uservo", uvo);
		
		return result;
		*/
	}

}
