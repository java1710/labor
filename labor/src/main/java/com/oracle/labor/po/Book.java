package com.oracle.labor.po;

public class Book {
	String bookname;
	Integer isbn;
	Integer price;
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public Integer getIsbn() {
		return isbn;
	}
	public void setIsbn(Integer isbn) {
		this.isbn = isbn;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Book [bookname=" + bookname + ", isbn=" + isbn + ", price=" + price + "]";
	}

	
	
}
