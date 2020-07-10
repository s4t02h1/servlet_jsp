package bean;

import java.io.Serializable;

public class Item implements Serializable {

	private Book book;
	private int count;

	public Book getProduct() {
		return book;
	}

	public int getCount() {
		return count;
	}

	public void setProduct(Book book) {
		this.book = book;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
