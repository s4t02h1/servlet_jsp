package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.LibraryUser;

public class LibraryUserDAO extends DAO {
	public LibraryUser search(String login, String password)
		throws Exception {
		LibraryUser libraryUser = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement(
				"select * from customer where login = ? and password = ?");
		st.setString(1, login);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			libraryUser = new LibraryUser();
			libraryUser.setId(rs.getInt("id"));
			libraryUser.setLogin(rs.getString("login"));
			libraryUser.setPassword(rs.getString("password"));
		}
		st.close();
		con.close();
		return libraryUser;
	}

}
