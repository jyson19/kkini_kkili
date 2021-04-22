package com.kk.domain;

public class NoticeVO {
	private int noticeNo;
	private String noWriteDate;
	private String subject;
	private String contents;
	
	public NoticeVO() {
	}
	
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoWriteDate() {
		return noWriteDate;
	}
	public void setNoWriteDate(String noWriteDate) {
		this.noWriteDate = noWriteDate;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", noWriteDate=" + noWriteDate + ", subject=" + subject
				+ ", contents=" + contents + ", getNoticeNo()=" + getNoticeNo() + ", getNoWriteDate()="
				+ getNoWriteDate() + ", getSubject()=" + getSubject() + ", getContents()=" + getContents()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
	
}
