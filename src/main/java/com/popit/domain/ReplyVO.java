package com.popit.domain;

import java.util.Date;

public class ReplyVO {
	private Integer replyNo;
	private Integer bno;
	private String replyText;
	private String replyWriter;
	private Date regDate;
	
	public Integer getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(Integer replyNo) {
		this.replyNo = replyNo;
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getReplyText() {
		return replyText;
	}
	public void setReplyText(String replyText) {
		this.replyText = replyText;
	}
	public String getReplyWriter() {
		return replyWriter;
	}
	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}
	@Override
	public String toString() {
		return "ReplyVO [replyNo=" + replyNo + ", bno=" + bno + ", replyText=" + replyText + ", replyWriter="
				+ replyWriter + ", regDate=" + regDate + "]";
	}
	
}
