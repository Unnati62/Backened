package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.BagDAO;
import com.amstech.dream.bags.dto.BagDTO;



public class BagService {


	private BagDAO bagDAO;
	

	public BagService(BagDAO bagDAO) {
		System.out.println("Creating BagService object");
		this.bagDAO = bagDAO;
	}

	public BagDTO findByName(String name) throws Exception {
		return bagDAO.findByName(name);

	
}

}