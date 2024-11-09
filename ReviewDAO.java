package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.ReviewDTO;
import com.amstech.dream.bags.util.DBUtil;

public class ReviewDAO {


	private DBUtil dbUtil;

	public ReviewDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String REVIEW_DATA_INSERT = "insert into review(item_id,user_role_id,rating)" +"value(?,?,?)";
	
	private final String REVIEW_DATA_UPDATE = "update user review item_id = ?, user_role_id = ?, rating = ? where id = ?";

	private final String REVIEW_DATA_DELETE = "delete from user where id = ?";

	public int save(ReviewDTO reviewDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(REVIEW_DATA_INSERT);
			
			pstmt.setInt(1, reviewDTO.getItem_id());
			pstmt.setInt(2, reviewDTO.getUser_role_id());
			pstmt.setString(3, reviewDTO.getRating());

			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}

public int update(ReviewDTO reviewDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(REVIEW_DATA_UPDATE);
			
			pstmt.setInt(1, reviewDTO.getItem_id());
			pstmt.setInt(2, reviewDTO.getUser_role_id());
			pstmt.setString(3, reviewDTO.getRating());

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
		pstmt = connection.prepareStatement(REVIEW_DATA_DELETE);
		
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

	


	


	


	

