package entity;

public class Customer {
	private String name;
	private String account;
	private String password;
	
	public Customer(String name, String account, String password) {
		this.name = name;
		this.account = account;
		this.password = password;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
