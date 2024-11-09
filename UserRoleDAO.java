package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.UserRoleDTO;
import com.amstech.dream.bags.util.DBUtil;

public class UserRoleDAO {
	
	private DBUtil dbUtil;
	public UserRoleDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	private final String USER_ROLE_DATA_INSERT = "insert into user_role(user_id,role_id)";
	
	private final String USER_ROLE_DATA_UPDATE = "update user set user_id = ?, role_id= ? where id = ?";

	private final String USER_ROLE_DATA_DELETE = "delete from user where id = ?";

	
	
	public int save(UserRoleDTO userRoleDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(USER_ROLE_DATA_INSERT);
			
			pstmt.setInt(1, userRoleDTO.getUser_id());
			pstmt.setInt(2, userRoleDTO.getRole_id());
			
			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}
	
public int update(UserRoleDTO userRoleDTO) throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(USER_ROLE_DATA_UPDATE);
			
			pstmt.setInt(1, userRoleDTO.getUser_id());
			pstmt.setInt(2, userRoleDTO.getRole_id());
			
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
		pstmt = connection.prepareStatement(USER_ROLE_DATA_UPDATE);
		
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

	


	


	



