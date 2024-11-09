package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.CountryDTO;
import com.amstech.dream.bags.util.DBUtil;

public class CountryDAO {
	
	private DBUtil dbUtil;

	public CountryDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String USER_DATA_INSERT = "insert into country(name)" +"value(?)";
	
	private final String USER_DATA_UPDATE = "update country set name = ?  where id = ?";

	private final String USER_DATA_DELETE = "delete from user where id = ?";

	
	public int save(CountryDTO countryDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(USER_DATA_INSERT);
			
			pstmt.setString(1, countryDTO.getName());
			
			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}

public int update(CountryDTO countryDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(USER_DATA_INSERT);
			
			pstmt.setString(1, countryDTO.getName());
			
			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}

public int delete(CountryDTO countryDTO) throws ClassNotFoundException, SQLException {
	
	Connection connection = null;
	PreparedStatement pstmt = null;
			int count;
			
	try {
		connection = dbUtil.getConnection();
		pstmt = connection.prepareStatement(USER_DATA_DELETE);
		
		pstmt.setString(1, countryDTO.getName());
		
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
