package com.ob.vo;

public class RoomVO {
	private String a_idx;
	private String a_name;
	private String a_location;
	private String content;
	private String a_check_in;
	private String a_check_out;
	private String a_company;
	private String reg_date;
	private String a_img_name;
	private String a_code;
	private String hit;

	public RoomVO() {
		super();
	}

	public RoomVO(String a_idx, String a_name, String a_location, String content, String a_check_in, String a_check_out,
			String a_company, String reg_date, String a_img_name, String a_code, String hit) {
		super();
		this.a_idx = a_idx;
		this.a_name = a_name;
		this.a_location = a_location;
		this.content = content;
		this.a_check_in = a_check_in;
		this.a_check_out = a_check_out;
		this.a_company = a_company;
		this.reg_date = reg_date;
		this.a_img_name = a_img_name;
		this.a_code = a_code;
		this.hit = hit;
	}

	public String getA_idx() {
		return a_idx;
	}

	public void setA_idx(String a_idx) {
		this.a_idx = a_idx;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public String getA_location() {
		return a_location;
	}

	public void setA_location(String a_location) {
		this.a_location = a_location;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getA_check_in() {
		return a_check_in;
	}

	public void setA_check_in(String a_check_in) {
		this.a_check_in = a_check_in;
	}

	public String getA_check_out() {
		return a_check_out;
	}

	public void setA_check_out(String a_check_out) {
		this.a_check_out = a_check_out;
	}

	public String getA_company() {
		return a_company;
	}

	public void setA_company(String a_company) {
		this.a_company = a_company;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getA_img_name() {
		return a_img_name;
	}

	public void setA_img_name(String a_img_name) {
		this.a_img_name = a_img_name;
	}

	public String getA_code() {
		return a_code;
	}

	public void setA_code(String a_code) {
		this.a_code = a_code;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

}
