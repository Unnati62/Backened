package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.UserDTO;
import com.amstech.dream.bags.util.DBUtil;



public class UserDAO {

	private DBUtil dbUtil;

	public UserDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}

	private final String USER_DATA_INSERT = "insert into user(city_id,first_name,last_name,email,mobile_number,address,password)"
			+ "value(?,?,?,?,?,?,?)";
	
	private final String USER_DATA_UPDATE = "update user set first_name = ?, last_name = ?,email = ?,mobile_number = ? where id = ?";

	private final String USER_DATA_DELETE = "delete from user where id = ?";

	
	private final String USER_DATA_FIND_FOR_LOGIN = "select * from user where email= ? and password = ?";
	
	private final String USER_DATA_FIND_ALL = "select * from user";
	
	public int save(UserDTO userDTO) throws ClassNotFoundException, SQLException {
	
		Connection connection = null;
		PreparedStatement pstmt = null;
				int count;
				
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(USER_DATA_INSERT);
			
			pstmt.setInt(1, userDTO.getCity_id());
			pstmt.setString(2, userDTO.getFirst_name());
			pstmt.setString(3, userDTO.getLast_name());
			pstmt.setString(4, userDTO.getEmail());
			pstmt.setString(5, userDTO.getMobile_number());
			pstmt.setString(6, userDTO.getAddress());
			pstmt.setString(7, userDTO.getPassword());
			
			count = pstmt.executeUpdate(); 
		}catch(Exception e) {
			throw e;
		}
		
		finally {
			dbUtil.close(connection, pstmt);
		}
		return count;
		 
	}
	
    
    public UserDTO login(String email , String password) throws Exception {
    	Connection connection = null;
    	PreparedStatement pstmt=null;
    	ResultSet rs= null;
    	UserDTO userDTO = null;
    	
    	try {
    		connection =dbUtil.getConnection();
    		pstmt = connection.prepareStatement(USER_DATA_FIND_FOR_LOGIN);
    		pstmt.setString(1,email);
    		pstmt.setString(2, password);
    		rs = pstmt.executeQuery();
    	
    		while(rs.next()) {
    			userDTO = new UserDTO();
    			userDTO.setId(rs.getInt("id"));
    			userDTO.setFirst_name(rs.getString("first_name"));
    			userDTO.setLast_name(rs.getString("last_name"));
    			userDTO.setMobile_number(rs.getString("mobile_number"));
    			//userDTO.setCity_id(rs.getInt("city_id"));
    			//userDTO.setEmail(rs.getString("email"));
    			//userDTO.setAddress(rs.getString("address"));
    			//userDTO.setPassword(rs.getString("password"));
    			
    	    	  
    		}
    	}catch(Exception e) {
    		throw e;
    	}finally {
    		dbUtil.close(connection, pstmt, rs);
    	}
    	return userDTO;
    }
    
   public int update(UserDTO userDTO) throws Exception {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		int count;
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(USER_DATA_UPDATE);
			pstmt.setString(1, userDTO.getFirst_name());
			pstmt.setString(2, userDTO.getLast_name());
			pstmt.setString(3,userDTO.getEmail() );
			pstmt.setString(4,userDTO.getMobile_number());
			pstmt.setString(4, userDTO.getAddress());
            pstmt.setInt(6,userDTO.getId());
			
			count = pstmt.executeUpdate() ;		
					}catch(Exception e)
		{
						throw e;
					}
		finally {
			dbUtil.close(connection,pstmt);
		}
		System.out.println(count);
        return count;
      
	}
   
   public int deleteById( int id) throws Exception {
		Connection connection = null;
		PreparedStatement pstmt = null;
		int count;
		try {
			connection = dbUtil.getConnection();
			pstmt = connection.prepareStatement(USER_DATA_DELETE);
			pstmt.setInt(1, id);
			
			count = pstmt.executeUpdate();
		}catch(Exception e) {
			throw e;
		}
		finally {
			dbUtil.close(connection,pstmt);
		}
		return count;
	}
   
	}
		
	




