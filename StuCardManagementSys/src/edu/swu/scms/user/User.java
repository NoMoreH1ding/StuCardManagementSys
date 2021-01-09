package edu.swu.scms.user;

public class User {

	private String id;
	private String user;
	private String pass;
	private String role;
	private String isLost;
	private float balance;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getIsLost() {
		return isLost;
	}
	public void setIsLost(String isLost) {
		this.isLost = isLost;
	}
	public float getBalance() {
		return balance;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}
}
