package lzqlab2;

import java.sql.*;
import java.util.ArrayList;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
public class lab_2 extends ActionSupport{
	public String author;
	
	public String bookname;
	public String Title;
	public String ISBN;
	public String Name;
	public String Age;
	public String AuthorId;
	public String Publisher;
	public String PublishDate;
	public String Price;
	public String Country;
	ArrayList<String> BookTitle = new ArrayList<String>(); 
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAge() {
		return Age;
	}
	public void setAge(String age) {
		Age = age;
	}
	public String getAuthorId() {
		return AuthorId;
	}
	public void setAuthorId(String authorId) {
		AuthorId = authorId;
	}
	public String getPublisher() {
		return Publisher;
	}
	public void setPublisher(String publisher) {
		Publisher = publisher;
	}
	public String getPublishDate() {
		return PublishDate;
	}
	public void setPublishDate(String publishDate) {
		PublishDate = publishDate;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String addAuthor() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("lab2", "root","123z123x123c");
		stmt.executeUpdate("insert into author values (\""+AuthorId+"\",\""+Name+"\",\""+Age+"\",\""+Country+"\")"); 
		return SUCCESS;
	}
	public String delete() throws UnsupportedEncodingException, SQLException{
		System.out.println(ISBN);
		Statement stmt = Tool.initSQL("lab2", "root","123z123x123c");
		stmt.executeUpdate("delete from book where ISBN=\""+ISBN+"\"");
		return SUCCESS;
	}
	public String toupdate() throws UnsupportedEncodingException{
		return SUCCESS;
	}
	
	public String update() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("lab2", "root","123z123x123c");
		stmt.executeUpdate("UPDATE book SET AuthorId = \""+AuthorId+"\", Publisher = \""+Publisher+"\",PublishDate=\""+PublishDate+"\",Price=\""+Price+"\" WHERE Title=\""+Title+"\""); 
		ResultSet rs = stmt.executeQuery("select * from author where AuthorId=\""+AuthorId+"\"");
		if(rs.next()){
			return SUCCESS;
		}
		System.out.println("id:"+AuthorId);
		return ERROR;
	}
	
	public String search() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("lab2", "root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from book"); 
		while(rs.next()){
			if(rs.getString("Title").equals(Title)){
				Title = rs.getString("Title");
				ISBN = rs.getString("ISBN");
				AuthorId = rs.getString("AuthorId");
				Publisher = rs.getString("Publisher");
				PublishDate = rs.getString("PublishDate");
				Price = rs.getString("Price");
			}
		}
		rs = stmt.executeQuery("select * from author where AuthorId=\""+AuthorId+"\""); 
		rs.next();
		Name = rs.getString("Name");
		Age = rs.getString("Age");
		Country = rs.getString("Country");
		return SUCCESS;
	}
	
	public String execute() throws UnsupportedEncodingException, SQLException{ 
		System.out.print(author+"...");
		Statement stmt = Tool.initSQL("lab2", "root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from author where Name=\""+author+"\""); 
		if(!rs.next()){
      	  return ERROR;
        }
        String authorId = rs.getString("AuthorId");
        rs = stmt.executeQuery("select * from book"); 
        while (rs.next()) {
	      	if(rs.getString("AuthorId").equals(authorId)){
	      		BookTitle.add(rs.getString("Title"));
	      	}
        }
		return SUCCESS;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public ArrayList<String> getBookTitle() {
		return BookTitle;
	}

	public void setBookTitle(ArrayList<String> bookTitle) {
		BookTitle = bookTitle;
	}

}
