package com.amstech.dream.bags.service;

import java.sql.SQLException;
import java.util.List;

import com.amstech.dream.bags.dao.ShippingDAO;
import com.amstech.dream.bags.dto.ShippingDTO;


public class ShippingService {
        private ShippingDAO shippingDAO;

	public ShippingService(ShippingDAO shippingDAO) {
		System.out.println("Creating  ShippingService Object");
		this.shippingDAO = shippingDAO;
	}


public ShippingDTO findById(int shipping_order_detail_item_id) throws Exception {
return shippingDAO.findById(shipping_order_detail_item_id);
}
	
    
}