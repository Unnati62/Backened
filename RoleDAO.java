package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.RoleDTO;
import com.amstech.dream.bags.util.DBUtil;

public class RoleDAO {


	private DBUtil dbUtil;

	public RoleDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String ROLE_DATA_INSERT = "insert into role(admin,customer)" +"value(?,?)";
	
	private final String ROLE_DATA_UPDATE = "update role set admin = ?, customer = ?  where id = ?";

	private final String ROLE_DATA_DELETE = "delete from user where id = ?";

	
	public int save(RoleDTO roleDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(ROLE_DATA_INSERT);
			
			pstmt.setString(1, roleDTO.getAdmin());
			pstmt.setString(2, roleDTO.getCustomer());
			
			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}
	
public int update(RoleDTO roleDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(ROLE_DATA_UPDATE);
			
			pstmt.setString(1, roleDTO.getAdmin());
			pstmt.setString(2, roleDTO.getCustomer());
			
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
		pstmt = connection.prepareStatement(ROLE_DATA_DELETE);
		
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

	


	


	

