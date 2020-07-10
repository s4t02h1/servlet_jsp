package bean;

public class LibraryUser implements java.io.Serializable {

	private int user_id;
	private String login;
	private String password;

	public int getId() {
		return user_id;
	}

	public String getLogin() {
		return login;
	}

	public String getPassword() {
		return password;
	}

	public void setId(int id) {
		this.user_id = id;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
