package com.kk.domain;

public class BookmarkVO {
	
	int hostId;
	int guestId;
	
	public BookmarkVO() {	}
	public BookmarkVO(int hostId, int guestId) {
		super();
		this.hostId = hostId;
		this.guestId = guestId;
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
	@Override
	public String toString() {
		return "BookmarkVO [hostId=" + hostId + ", guestId=" + guestId + "]";
	}
	
	

}
