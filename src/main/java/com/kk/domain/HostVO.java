package com.kk.domain;

// 호스트 객체(컨택+프로필)
public class HostVO extends MemberVO {
	private String hostPic; // 프로필사진
	private String company; // 회사
	private String uni; // 대학교
	private int hostValue; // 수익

	public HostVO() {
	}

	public HostVO(String hostPic, String company, String uni, int hostValue) {
		super();
		this.hostPic = hostPic;
		this.company = company;
		this.uni = uni;
		this.hostValue = hostValue;
	}

	public String getHostPic() {
		return hostPic;
	}

	public void setHostPic(String hostPic) {
		this.hostPic = hostPic;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getUni() {
		return uni;
	}

	public void setUni(String uni) {
		this.uni = uni;
	}

	public int getHostValue() {
		return hostValue;
	}

	public void setHostValue(int hostValue) {
		this.hostValue = hostValue;
	}

	@Override
	public String toString() {
		return "Host [hostPic=" + hostPic + ", company=" + company + ", uni=" + uni + ", hostValue=" + hostValue + "]";
	}
}
