package com.ob.vo;

public class UserVO {
	String id, account, password, nickname, birthday, zipcode, 
				   address1, address2, email, e_confirm, tel;

	public UserVO() {
		super();
	}

	public UserVO(String id, String account, String password, String nickname, String birthday, String zipcode,
			String address1, String address2, String email, String e_confirm, String tel) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.nickname = nickname;
		this.birthday = birthday;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.email = email;
		this.e_confirm = e_confirm;
		this.tel = tel;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getE_confirm() {
		return e_confirm;
	}

	public void setE_confirm(String e_confirm) {
		this.e_confirm = e_confirm;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	

}
