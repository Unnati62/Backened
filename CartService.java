package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.CartDAO;
import com.amstech.dream.bags.dto.CartDTO;



public class CartService {

	private CartDAO cartDAO;

    public CartService(CartDAO cartDAO) {
    	this.cartDAO = cartDAO;
	}
    

	public int save(CartDTO cartDTO) throws ClassNotFoundException, SQLException {
		return cartDAO.save(cartDTO);
  	 
    }
	public int update(CartDTO cartDTO) throws ClassNotFoundException, SQLException {
		return cartDAO.update(cartDTO);
  	 
    }
	public int delete(int id) throws ClassNotFoundException, SQLException {
		return cartDAO.delete(id);
  	 
    }
	
}
