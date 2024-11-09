package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.PaymentModeDTO;
import com.amstech.dream.bags.util.DBUtil;

public class PaymentModeDAO {


	private DBUtil dbUtil;

	public PaymentModeDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String PAYMENT_MODE_DATA_INSERT = "insert into payment_mode(type)";
	
    private final String PAYMENT_MODE_DATA_UPDATE = "update payment_mode set type = ? where id = ?";
	
	
	public int save(PaymentModeDTO paymentModeDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(PAYMENT_MODE_DATA_INSERT);
			
			
			pstmt.setString(1, paymentModeDTO.getType());

			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}
public int update(PaymentModeDTO paymentModeDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(PAYMENT_MODE_DATA_UPDATE);
			
			
			pstmt.setString(1, paymentModeDTO.getType());

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
