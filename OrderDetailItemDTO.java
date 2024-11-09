package com.amstech.dream.bags.dto;

public class OrderDetailItemDTO {


	    private int orderDetailItemId;
	    private int bagId;
	    private String bagName;
	    private String serialNumber;
	    private double price;
	    private String colour;
	    private int categoryId;
	    private int itemQuantity;
	    private int userId;
	    private double totalCost;

	 
	    public int getOrderDetailItemId() {
	 			return orderDetailItemId;
	 		}

	 		public void setOrderDetailItemId(int orderDetailItemId) {
	 			this.orderDetailItemId = orderDetailItemId;
	 		}

	    public int getBagId() {
	        return bagId;
	    }

	 
		public void setBagId(int bagId) {
	        this.bagId = bagId;
	    }

	    public String getBagName() {
	        return bagName;
	    }

	    public void setBagName(String bagName) {
	        this.bagName = bagName;
	    }

	    public String getSerialNumber() {
	        return serialNumber;
	    }

	    public void setSerialNumber(String serialNumber) {
	        this.serialNumber = serialNumber;
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

	    public int getCategoryId() {
	        return categoryId;
	    }

	    public void setCategoryId(int categoryId) {
	        this.categoryId = categoryId;
	    }

	    public int getItemQuantity() {
	        return itemQuantity;
	    }

	    public void setItemQuantity(int itemQuantity) {
	        this.itemQuantity = itemQuantity;
	    }

	    public int getUserId() {
	        return userId;
	    }

	    public void setUserId(int userId) {
	        this.userId = userId;
	    }

	    public double getTotalCost() {
	        return totalCost;
	    }

	    public void setTotalCost(double totalCost) {
	        this.totalCost = totalCost;
	    }
	

	
	
}
