package entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id
	private String uName;
	private String uPass;
	public User() {
		super();
	}
	public User(String uName, String uPass) {
		super();
		this.uName = uName;
		this.uPass = uPass;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuPass() {
		return uPass;
	}
	public void setuPass(String uPass) {
		this.uPass = uPass;
	}
	@Override
	public String toString() {
		return "User [uName=" + uName + ", uPass=" + uPass + "]";
	}
	
}
