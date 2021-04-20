package com.kk.domain;

// 회원 DTO
public class Member {
	private int memberId; // 회원번호
	private String name; // 이름
	private String email; // 이메일
	private String password; // 비밀번호
	private int tel; // 휴대폰번호
	private int auth; // 회원등급 {0:게스트, 1:호스트, 2:관리자}
	private String joinDate; // 가입일자
	private String lastConnDate; // 최근접속일

	public Member() {
	}

	public Member(int memberId, String name, String email, String password, int tel, int auth, String joinDate,
			String lastConnDate) {
		super();
		this.memberId = memberId;
		this.name = name;
		this.email = email;
		this.password = password;
		this.tel = tel;
		this.auth = auth;
		this.joinDate = joinDate;
		this.lastConnDate = lastConnDate;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getLastConnDate() {
		return lastConnDate;
	}

	public void setLastConnDate(String lastConnDate) {
		this.lastConnDate = lastConnDate;
	}

	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", tel=" + tel + ", auth=" + auth + ", joinDate=" + joinDate + ", lastConnDate=" + lastConnDate + "]";
	}
}
