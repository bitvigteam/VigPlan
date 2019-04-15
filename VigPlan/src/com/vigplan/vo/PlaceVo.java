package com.vigplan.vo;

public class PlaceVo {

	private Long pk;
	private String title;      
	private String link;		
	private String description;	
	private String telephone;
	private String address;
	private String roadAddress; 
	private int mapx;
	private int mapy;

	public PlaceVo() {

	}

	public Long getPk() {
		return pk;
	}

	public void setPk(Long pk) {
		this.pk = pk;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRoadAddress() {
		return roadAddress;
	}

	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}

	public int getMapx() {
		return mapx;
	}

	public void setMapx(int mapx) {
		this.mapx = mapx;
	}

	public int getMapy() {
		return mapy;
	}

	public void setMapy(int mapy) {
		this.mapy = mapy;
	}
	

}
