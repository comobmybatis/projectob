package com.ob.vo;

public class ReservationVO {
	String id, user_id, room_id, s_date, e_date, r_date, pax, review_id;

	public ReservationVO() {
		super();
	}

	public ReservationVO(String id, String user_id, String room_id, String s_date, String e_date, String r_date,
			String pax, String review_id) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.room_id = room_id;
		this.s_date = s_date;
		this.e_date = e_date;
		this.r_date = r_date;
		this.pax = pax;
		this.review_id = review_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getRoom_id() {
		return room_id;
	}

	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	public String getE_date() {
		return e_date;
	}

	public void setE_date(String e_date) {
		this.e_date = e_date;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public String getPax() {
		return pax;
	}

	public void setPax(String pax) {
		this.pax = pax;
	}

	public String getreview_id() {
		return review_id;
	}

	public void setreview_id(String review_id) {
		this.review_id = review_id;
	}

	@Override
	public String toString() {
		return "ReservationVO [id=" + id + ", user_id=" + user_id + ", room_id=" + room_id + ", s_date=" + s_date
				+ ", e_date=" + e_date + ", r_date=" + r_date + ", pax=" + pax + ", review_id=" + review_id + "]";
	}
	
}
