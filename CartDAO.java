package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.CartDTO;
import com.amstech.dream.bags.util.DBUtil;


public class CartDAO {

	private DBUtil dbUtil;

	public CartDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String CART_DATA_INSERT = "insert into Cart(item_id,quantity,total_cost,offer_id,offer_amount)";
	
	private final String CART_DATA_UPDATE = "update cart set item_id = ?, quantity = ?, total_cost = ?, offer_id = ?, offer_amount = ? where id = ?";

	private final String CART_DATA_DELETE = "delete from cart where id = ?";

	public int save(CartDTO cartDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
	    int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(CART_DATA_INSERT);
			
			pstmt.setInt(1, cartDTO.getItem_id());
			pstmt.setInt(2, cartDTO.getQuantity());
			pstmt.setDouble(2, cartDTO.getTotal_cost());
			pstmt.setInt(2, cartDTO.getOffer_id());
			pstmt.setDouble(2, cartDTO.getOffer_amount());
			
			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}
public int update(CartDTO cartDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
	    int count;
				
		try {
			connection =dbUtil.getConnection();
			pstmt = connection.prepareStatement(CART_DATA_UPDATE);
			
			pstmt.setInt(1, cartDTO.getItem_id());
			pstmt.setInt(2, cartDTO.getQuantity());
			pstmt.setDouble(2, cartDTO.getTotal_cost());
			pstmt.setInt(2, cartDTO.getOffer_id());
			pstmt.setDouble(2, cartDTO.getOffer_amount());
			
			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}
public int delete(int id) throws ClassNotFoundException, SQLException {
	
	Connection connection = null;
	PreparedStatement pstmt = null;
    int count;
			
	try {
		connection = dbUtil.getConnection();
		pstmt = connection.prepareStatement(CART_DATA_DELETE);
		
		pstmt.setInt(1, id);
		
		count = pstmt.executeUpdate(); 
	}catch(Exception e) {
		throw e;
	}
	
	finally {
		dbUtil.close(connection, pstmt);
	}
	return count;
	 
}
	
}
