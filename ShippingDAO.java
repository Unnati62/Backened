package com.amstech.dream.bags.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.amstech.dream.bags.dto.ShippingDTO;
import com.amstech.dream.bags.util.DBUtil;

public class ShippingDAO {
    private DBUtil dbUtil;

    public ShippingDAO(DBUtil dbUtil) {
        this.dbUtil = dbUtil;
    }

    private final String SHIPPING_DATA_FIND_ALL = "SELECT s.id AS shipping_id, " +
        "s.delievery_address, " +
        "s.order_detail_item_id AS shipping_order_detail_item_id, " +
        "s.user_id AS shipping_user_id, " +
        "o.bag_id, " +
        "o.item_quantity, " +
        "o.total_cost, " +
        "u.first_name, " +
        "u.last_name, " +
        "u.email, " +
        "u.mobile_number, " +
        "u.address, " +
        "b.name AS bag_name, " +
        "b.price AS bag_price " +
        "FROM shipping s " +
        "JOIN order_detail_item o ON s.order_detail_item_id = o.id " +
        "JOIN user u ON s.user_id = u.id " +
        "JOIN bag b ON o.bag_id = b.id " +
        "WHERE s.id = ?";

    public ShippingDTO findById(int shipping_order_detail_item_id) throws Exception {
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ShippingDTO shippingDTO = null;
        try {
            connection = dbUtil.getConnection();
            pstmt = connection.prepareStatement(SHIPPING_DATA_FIND_ALL);
            pstmt.setInt(1, shipping_order_detail_item_id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                shippingDTO = new ShippingDTO();
                shippingDTO.setBag_id(rs.getInt("bag_id"));
                shippingDTO.setBagName(rs.getString("bag_name"));
                shippingDTO.setBagPrice(rs.getDouble("bag_price"));
                shippingDTO.setDelieveryaddress(rs.getString("delievery_address"));
                shippingDTO.setFirstName(rs.getString("first_name"));
                shippingDTO.setLastName(rs.getString("last_name"));
                shippingDTO.setMobileNumber(rs.getString("mobile_number"));
                shippingDTO.setEmail(rs.getString("email"));
                shippingDTO.setShipping_id(rs.getInt("shipping_id"));
                shippingDTO.setShippingOrderDetailItemId(rs.getInt("shipping_order_detail_item_id"));
                shippingDTO.setShippingUserId(rs.getInt("shipping_user_id"));
                shippingDTO.setTotalCost(rs.getDouble("total_cost"));
                shippingDTO.setItemQuantity(rs.getInt("item_quantity"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            dbUtil.close(connection, pstmt, rs);
        }
        return shippingDTO;
    }
}
