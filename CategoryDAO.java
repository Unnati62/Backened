package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.CategoryDTO;
import com.amstech.dream.bags.util.DBUtil;



public class CategoryDAO {

	private DBUtil dbUtil;

	public CategoryDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String CATEGORY_DATA_INSERT = "insert into category(name,capacity)";
	
	private final String CATEGORY_DATA_UPDATE = "update category set  name = ?, capacity = ? where id = ?";

	private final String CATEGORY_DATA_DELETE = "delete from category where id = ?";

	public int save(CategoryDTO categoryDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(CATEGORY_DATA_INSERT);
			
			pstmt.setString(1, categoryDTO.getName());
			pstmt.setString(2, categoryDTO.getCapacity());
			

			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}
	
	public int update(CategoryDTO categoryDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(CATEGORY_DATA_UPDATE);
			
			pstmt.setString(1, categoryDTO.getName());
			pstmt.setString(2, categoryDTO.getCapacity());
			

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
			pstmt = connection.prepareStatement(CATEGORY_DATA_DELETE);
			
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
