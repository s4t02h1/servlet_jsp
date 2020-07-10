package bean;

import java.io.Serializable;

public class Book implements Serializable {

	private int book_id;
	private String book_name;
	private String author_name;
	private String publisher;

	public int getId() {
		return book_id;
	}

	public String getName() {
		return book_name;
	}

	public String getPrice() {
		return publisher;
	}

	public void setId(int id) {
		this.book_id = id;
	}

	public void setName(String name) {
		this.book_name = name;
	}

	public void setPrice(String price) {
		this.publisher = publisher;
	}

}
