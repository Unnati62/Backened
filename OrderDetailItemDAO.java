package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.OrderDetailItemDTO;
import com.amstech.dream.bags.util.DBUtil;

public class OrderDetailItemDAO {

	

	private DBUtil dbUtil;

	public OrderDetailItemDAO(DBUtil dbUtil) {
		this.dbUtil = dbUtil;
	}

	 private final String ORDER_DETAIL_DATA_FIND_BY_ID = "SELECT " +
				        "    odi.id AS order_detail_item_id, " +
				        "    odi.bag_id, " +
				        "    b.name AS bag_name, " +
				        "    b.serial_number, " +
				        "    b.price, " +
				        "    b.colour, " +
				        "    b.category_id, " +
				        "    odi.item_quantity, " +
				        "    odi.user_id, " +
				        "    odi.total_cost " +
				        "    FROM " +
				        "    order_detail_item odi " +
				        "    JOIN " +
				        "    bag b ON odi.bag_id = b.id " +
				        "    WHERE " +
				        "    odi.id = ?";


		    public OrderDetailItemDTO findById(int bag_id ) throws Exception {
		        Connection connection = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs = null;
		        OrderDetailItemDTO orderDetailItemDTO = null;
		        try {
		        	System.out.println("try block");
		            connection = dbUtil.getConnection();
		            pstmt = connection.prepareStatement(ORDER_DETAIL_DATA_FIND_BY_ID);
		            pstmt.setInt(1, bag_id );
		            rs = pstmt.executeQuery();
		            if (rs.next()) {
		            	orderDetailItemDTO = new OrderDetailItemDTO();
		            	orderDetailItemDTO.setOrderDetailItemId(rs.getInt("order_detail_item_id"));
		            	orderDetailItemDTO.setBagId(rs.getInt("bag_id"));
		            	orderDetailItemDTO.setBagName(rs.getString("bag_name"));
		            	orderDetailItemDTO.setCategoryId(rs.getInt("category_id"));
		            	orderDetailItemDTO.setColour(rs.getString("colour"));
		            	orderDetailItemDTO.setItemQuantity(rs.getInt("item_quantity"));
		            	orderDetailItemDTO.setPrice(rs.getDouble("price"));
		            	orderDetailItemDTO.setTotalCost(rs.getDouble("total_cost"));
		            	orderDetailItemDTO.setSerialNumber(rs.getString("serial_number"));
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		            throw e;
		        } finally {
		            dbUtil.close(connection, pstmt, rs);
		        }
		        return orderDetailItemDTO;
		    }

}
