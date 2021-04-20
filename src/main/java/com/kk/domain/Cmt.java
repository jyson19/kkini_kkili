package com.kk.domain;

// 댓글 DTO
public class Cmt {
	private int cmtId; // 댓글번호 pk
	private int hostId; // 호스트번호 fk from member.memberId
	private int guestId; // 게스트번호 fk from member.memberId
	private String writeDate; // 등록일
	private String content; // 댓글내용

	public Cmt() {
	}

	public Cmt(int cmtId, int hostId, int guestId, String writeDate, String content) {
		super();
		this.cmtId = cmtId;
		this.hostId = hostId;
		this.guestId = guestId;
		this.writeDate = writeDate;
		this.content = content;
	}

	public int getCmtId() {
		return cmtId;
	}

	public void setCmtId(int cmtId) {
		this.cmtId = cmtId;
	}

	public int getHostId() {
		return hostId;
	}

	public void setHostId(int hostId) {
		this.hostId = hostId;
	}

	public int getGuestId() {
		return guestId;
	}

	public void setGuestId(int guestId) {
		this.guestId = guestId;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Cmt [cmtId=" + cmtId + ", hostId=" + hostId + ", guestId=" + guestId + ", writeDate=" + writeDate
				+ ", content=" + content + "]";
	}

}
