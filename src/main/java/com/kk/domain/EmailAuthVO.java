package com.kk.domain;

// 회원 DTO
public class EmailAuthVO {
	
	private String email; // 이메일
	private String authKey; // 인증크
	private int authStatus; // 상태
	
	public EmailAuthVO() {

	}
	
	public EmailAuthVO(String email, String authKey, int authStatus) {
		super();
		this.email = email;
		this.authKey = authKey;
		this.authStatus = authStatus;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAuthKey() {
		return authKey;
	}

	public void setAuthKey(String authKey) {
		this.authKey = authKey;
	}

	public int getAuthStatus() {
		return authStatus;
	}

	public void setAuthStatus(int authStatus) {
		this.authStatus = authStatus;
	}

	@Override
	public String toString() {
		return "EmailAuthVO [email=" + email + ", authKey=" + authKey + ", authState=" + authStatus + "]";
	}
	
}
