package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.OfferDTO;
import com.amstech.dream.bags.util.DBUtil;


public class OfferDAO {


	private DBUtil dbUtil;

	public OfferDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String OFFER_DATA_INSERT = "insert into offer(type,discount)";
	
	private final String OFFER_DATA_UPDATE = "update state set type = ?, discount = ?  where id = ?";

	private final String OFFER_DATA_DELETE = "delete from user where id = ?";

	
	public int save(OfferDTO offerDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(OFFER_DATA_INSERT);
			
			
			pstmt.setString(1, offerDTO.getType());
			pstmt.setDouble(2, offerDTO.getDiscount());
			

			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}
public int update(OfferDTO offerDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(OFFER_DATA_UPDATE);
			
			
			pstmt.setString(1, offerDTO.getType());
			pstmt.setDouble(2, offerDTO.getDiscount());
			

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
		pstmt = connection.prepareStatement(OFFER_DATA_DELETE);
		
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
