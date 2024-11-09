package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.amstech.dream.bags.dto.StateDTO;
import com.amstech.dream.bags.util.DBUtil;

public class StateDAO {
	
	private DBUtil dbUtil;

	public StateDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String STATE_DATA_INSERT = "insert into state(country_id,name)" + "value(?,?)";
	
	private final String STATE_DATA_UPDATE = "update state set country_id = ?, name = ?  where id = ?";

	private final String STATE_DATA_DELETE = "delete from user where id = ?";

	
	public int save(StateDTO stateDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(STATE_DATA_INSERT);
			
			pstmt.setInt(1, stateDTO.getCountry_id());
			pstmt.setString(2, stateDTO.getName());
			
			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}

public int update(StateDTO stateDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(STATE_DATA_UPDATE);
			
			pstmt.setInt(1, stateDTO.getCountry_id());
			pstmt.setString(2, stateDTO.getName());
			
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
			pstmt = connection.prepareStatement(STATE_DATA_DELETE);
			
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

	

