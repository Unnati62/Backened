package com.amstech.dream.bags.dto;

import com.mysql.cj.jdbc.Blob;

public class BagDTO {

	private int bag_id;
	private String bag_name;
	private String serial_number;
	private double price;
	private String colour;
	private int category_id;
	private String category_name;
	private double capacity;
	private Blob image;
	
	public int getBag_id() {
		return bag_id;
	}
	public void setBag_id(int bag_id) {
		this.bag_id = bag_id;
	}
	public String getBag_name() {
		return bag_name;
	}
	public void setBag_name(String bag_name) {
		this.bag_name = bag_name;
	}
	public String getSerial_number() {
		return serial_number;
	}
	public void setSerial_number(String serial_number) {
		this.serial_number = serial_number;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public double getCapacity() {
		return capacity;
	}
	public void setCapacity(double capacity) {
		this.capacity = capacity;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	
	
	

	
	
}
