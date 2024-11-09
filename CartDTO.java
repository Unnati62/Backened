package com.amstech.dream.bags.dto;

public class CartDTO {

	private int id;
	private int item_id;
	private int quantity;
	private double total_cost;
	private int offer_id;
	private double offer_amount;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getItem_id() {
		return item_id;
	}
	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotal_cost() {
		return total_cost;
	}
	public void setTotal_cost(double total_cost) {
		this.total_cost = total_cost;
	}
	public int getOffer_id() {
		return offer_id;
	}
	public void setOffer_id(int offer_id) {
		this.offer_id = offer_id;
	}
	public double getOffer_amount() {
		return offer_amount;
	}
	public void setOffer_amount(double offer_amount) {
		this.offer_amount = offer_amount;
	}
	
	
}

