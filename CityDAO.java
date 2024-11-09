package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.CityDTO;
import com.amstech.dream.bags.util.DBUtil;


public class CityDAO {


	private DBUtil dbUtil;

	public CityDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String CITY_DATA_INSERT = "insert into city(state_id,name)";
	
	private final String CITY_DATA_UPDATE = "update city set state_id = ?, name = ? where id = ?";

	private final String CITY_DATA_DELETE = "delete from city where id = ?";

	public int save(CityDTO cityDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(CITY_DATA_INSERT);
			
			pstmt.setInt(1, cityDTO.getState_id());
			pstmt.setString(2, cityDTO.getName());
			
			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}

   public int update(CityDTO cityDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(CITY_DATA_UPDATE);
			
			pstmt.setInt(1, cityDTO.getState_id());
			pstmt.setString(2, cityDTO.getName());
			
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
		pstmt = connection.prepareStatement(CITY_DATA_INSERT);
		
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

	


	

