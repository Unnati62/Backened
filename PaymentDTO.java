package com.amstech.dream.bags.dto;

public class PaymentDTO {
	
	private int id;
	private String payment_date;
	private int payment_mode_id;
	private double amount;
	private boolean status;
	private int order_detail_id;
	private int user_role_id;
	private String transcation_number;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public int getPayment_mode_id() {
		return payment_mode_id;
	}
	public void setPayment_mode_id(int payment_mode_id) {
		this.payment_mode_id = payment_mode_id;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public int getOrder_detail_id() {
		return order_detail_id;
	}
	public void setOrder_detail_id(int order_detail_id) {
		this.order_detail_id = order_detail_id;
	}
	public int getUser_role_id() {
		return user_role_id;
	}
	public void setUser_role_id(int user_role_id) {
		this.user_role_id = user_role_id;
	}
	public String getTranscation_number() {
		return transcation_number;
	}
	public void setTranscation_number(String transcation_number) {
		this.transcation_number = transcation_number;
	}

	
	
}
