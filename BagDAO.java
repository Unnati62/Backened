package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.BagDTO;
import com.amstech.dream.bags.util.DBUtil;
import com.mysql.cj.jdbc.Blob;

public class BagDAO {

	private DBUtil dbUtil;
	public BagDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}
	
	
	private final String BAG_FIND_BY_NAME = "SELECT "
            + "    bag.id AS bag_id, "
            + "    bag.name AS bag_name, "
            + "    bag.serial_number, "
            + "    bag.price, "
            + "    bag.colour, "
            + "    bag.image, "
            + "    category.id AS category_id, "
            + "    category.name AS category_name, "
            + "    category.capacity "
            + "FROM bag "
            + "JOIN category ON bag.category_id = category.id "
            + "WHERE bag.name = ?";


	
public BagDTO findByName(String name) throws ClassNotFoundException, SQLException {
	
	   Connection connection = null;
       PreparedStatement pstmt = null;
       ResultSet rs = null;
       BagDTO bagDTO = null;
       try {
           connection = dbUtil.getConnection();
           pstmt = connection.prepareStatement(BAG_FIND_BY_NAME);
           pstmt.setString(1, name);
           rs = pstmt.executeQuery();
           if (rs.next()) {
        	   bagDTO = new BagDTO();
        	   bagDTO.setBag_id(rs.getInt("bag_id"));
        	   bagDTO.setBag_name(rs.getString("bag_name"));
        	   bagDTO.setCapacity(rs.getDouble("capacity"));
        	   bagDTO.setCategory_id(rs.getInt("category_id"));
        	   bagDTO.setCategory_name(rs.getString("category_name"));
        	   bagDTO.setColour(rs.getString("colour"));
        	   bagDTO.setPrice(rs.getDouble("price"));
        	  
        	   bagDTO.setSerial_number(rs.getString("serial_number"));
        	   bagDTO.setImage((Blob) rs.getBlob("image"));
             
           }
       } catch (Exception e) {
           e.printStackTrace();
           throw e;
       } finally {
           dbUtil.close(connection, pstmt, rs);
       }
       return bagDTO ;
   }
}


