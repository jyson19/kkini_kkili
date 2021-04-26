package com.kk.domain;

// 호스트 인증 객체
public class AdminVO {
	private int memberId;
	private String writeDate; // 호스트 신청 일자
	private String authFile; // 호스트 인증 파일
	private int result; // 인증 결과

	public AdminVO() {
	}

	public AdminVO(int memberId, String writeDate, String authFile, int result) {
		super();
		this.memberId = memberId;
		this.writeDate = writeDate;
		this.authFile = authFile;
		this.result = result;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	public String getAuthFile() {
		return authFile;
	}

	public void setAuthFile(String authFile) {
		this.authFile = authFile;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "HostAuthVo [writeDate=" + writeDate + ", authFile=" + authFile + ", result=" + result + "]";
	}

}
