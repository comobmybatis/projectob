package com.ob.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ob.dao.DAO;
import com.ob.vo.UserVO;

public class JoincheckCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String account = request.getParameter("account");	//id
		String password = request.getParameter("password");
		String nickname = request.getParameter("nickname");
		String birthday = request.getParameter("birthday");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		
		//get은 가져오는것 set은 저장하는것
		UserVO vo = new UserVO();
		
		vo.setAccount(account);
		vo.setPassword(password);
		vo.setNickname(nickname);
		vo.setBirthday(birthday);
		vo.setAddress1(address1);
		vo.setAddress2(address2);
		vo.setEmail(email);
		vo.setTel(tel);
		System.out.println("vo : " + vo);
		DAO.checkJoin(vo); //dao에 있는 체크조인메소드를 호출하고, 매개변수부에  vo를 넣어줌
		
		
		return "controller?type=main";
	}

}
