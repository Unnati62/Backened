package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.OrderDetailItemDAO;
import com.amstech.dream.bags.dao.UserDAO;
import com.amstech.dream.bags.dto.OrderDetailItemDTO;
import com.amstech.dream.bags.dto.UserDTO;



public class OrderDetailItemService {

	 private OrderDetailItemDAO orderDetailDAO;


     public OrderDetailItemService(OrderDetailItemDAO orderDetailDAO) {
         System.out.println("Creating OrderDetailItemService Object");
 		this.orderDetailDAO = orderDetailDAO;
 	}
     


     public OrderDetailItemDTO findById(int bag_id ) throws Exception {
         return orderDetailDAO.findById(bag_id );
     }
}
