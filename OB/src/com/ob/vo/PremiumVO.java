package com.ob.vo;

public class PremiumVO {
	String pidx, idx, image, file_name, ori_name, title, writer, id
		, summary, content, regdate, usedate, email, hit;

	public PremiumVO() {
	}

	public PremiumVO(String pidx, String idx, String image, String file_name, String ori_name, String title,
			String writer, String id, String summary, String content, String regdate, String usedate, String email,
			String hit) {
		super();
		this.pidx = pidx;
		this.idx = idx;
		this.image = image;
		this.file_name = file_name;
		this.ori_name = ori_name;
		this.title = title;
		this.writer = writer;
		this.id = id;
		this.summary = summary;
		this.content = content;
		this.regdate = regdate;
		this.usedate = usedate;
		this.email = email;
		this.hit = hit;
	}

	public String getPidx() {
		return pidx;
	}

	public void setPidx(String pidx) {
		this.pidx = pidx;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getOri_name() {
		return ori_name;
	}

	public void setOri_name(String ori_name) {
		this.ori_name = ori_name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getUsedate() {
		return usedate;
	}

	public void setUsedate(String usedate) {
		this.usedate = usedate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "premiumVO [pidx=" + pidx + ", idx=" + idx + ", image=" + image + ", file_name=" + file_name
				+ ", ori_name=" + ori_name + ", title=" + title + ", writer=" + writer + ", id=" + id + ", summary="
				+ summary + ", content=" + content + ", regdate=" + regdate + ", usedate=" + usedate + ", email="
				+ email + ", hit=" + hit + "]";
	}
	
}
