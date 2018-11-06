package com.ob.vo;

public class NoticeVO {
	String id, user_id, type, title, content, write_date, read_count;

	public NoticeVO() {
		super();
	}

	public NoticeVO(String id, String user_id, String type, String title, String content, String write_date,
			String read_count) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.type = type;
		this.title = title;
		this.content = content;
		this.write_date = write_date;
		this.read_count = read_count;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getRead_count() {
		return read_count;
	}

	public void setRead_count(String read_count) {
		this.read_count = read_count;
	}

	@Override
	public String toString() {
		return "NoticeVO [id=" + id + ", user_id=" + user_id + ", type=" + type + ", title=" + title + ", content="
				+ content + ", write_date=" + write_date + ", read_count=" + read_count + "]";
	}
}
