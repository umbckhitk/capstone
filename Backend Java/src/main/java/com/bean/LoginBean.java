package com.bean;

public class LoginBean {
	@Override
	public String toString() {
		return "LoginBean [userName=" + userName + ", password=" + passwords + "]";
	}
	
	private int userName;
	private String passwords;
	
	
	public int getUserName() {
		return userName;
	}
	public void setUserName(int userName) {
		this.userName = userName;
	}
	public String getPasswords() {
		return passwords;
	}
	public void setPasswords(String password) {
		this.passwords = password;
	}
	

}
