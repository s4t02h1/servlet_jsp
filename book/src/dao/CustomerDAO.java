package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Customer;

public class CustomerDAO extends DAO {
	public Customer search(String login, String password, String error)
		throws Exception {
		Customer customer = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement(
				"select * from customer where login = ? and password = ?");
		st.setString(1, login);
		st.setString(2, password);
		st.setString(3, error);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			customer = new Customer();
			customer.setId(rs.getInt("id"));
			customer.setLogin(rs.getString("login"));
			customer.setPassword(rs.getString("password"));
		}
		st.close();
		con.close();
		return customer;
	}

}
