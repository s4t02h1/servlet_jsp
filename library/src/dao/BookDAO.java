package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Book;


public class BookDAO extends DAO {

	public List<Book> search(String keyword) throws Exception {
		List<Book> list = new ArrayList<>();


	try(Connection con = getConnection();
		PreparedStatement st = con.prepareStatement("select * from product where name like ?");){
		st.setString(1, "%" + keyword + "%");
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			Book p = new Book();
			p.setId(rs.getInt("id"));
			p.setName(rs.getString("name"));
			p.setPrice(rs.getInt("price"));
			list.add(p);
		}

//		st.close();
//		con.close();

		return list;}
	}

	public int insert(Book book) throws Exception {

	try(Connection con = getConnection();

		PreparedStatement st = con.prepareStatement("insert into product(name, price) values(?,?);");){
		st.setString(1, book.getName());
		st.setInt(2, book.getPrice());
		int line = st.executeUpdate();

		return line;}
	}


}
