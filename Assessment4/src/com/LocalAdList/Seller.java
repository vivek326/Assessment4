package com.LocalAdList;

public class Seller {

	String postingtitle;
	String city;
	String postalcode;
	String email;
	String phone;
	public Seller(String postingtitle, String city, String postalcode, String email, String phone) {
		super();
		this.postingtitle = postingtitle;
		this.city = city;
		this.postalcode = postalcode;
		this.email = email;
		this.phone = phone;
	}
	public String getPostingtitle() {
		return postingtitle;
	}
	public void setPostingtitle(String postingtitle) {
		this.postingtitle = postingtitle;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
