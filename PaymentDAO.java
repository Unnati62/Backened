package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.PaymentDTO;
import com.amstech.dream.bags.util.DBUtil;


public class PaymentDAO {


	private DBUtil dbUtil;

	public PaymentDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String PAYMENT_DATA_INSERT = "insert into payment(payment_date,payment_mode_id,amount,status,order_detail_id,user_role_id,transection_number)";
	
	public int save(PaymentDTO paymentDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(PAYMENT_DATA_INSERT);
			
			pstmt.setString(1, paymentDTO.getPayment_date());
			pstmt.setInt(2, paymentDTO.getPayment_mode_id());
			pstmt.setDouble(3, paymentDTO.getAmount());
			pstmt.setBoolean(4, paymentDTO.isStatus());
			pstmt.setInt(5, paymentDTO.getOrder_detail_id());
			pstmt.setInt(6, paymentDTO.getUser_role_id());
            pstmt.setString(7, paymentDTO.getTranscation_number());


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