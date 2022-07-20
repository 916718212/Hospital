package entity;

public class Message {
	private String message;
	private String name;
	private String phone;
	private String account;
	private String email;
	public Message(String message, String name, String phone, String account,
			String email) {
		this.message = message;
		this.name = name;
		this.phone = phone;
		this.account = account;
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
