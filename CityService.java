package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.CityDAO;
import com.amstech.dream.bags.dto.CityDTO;


public class CityService {

	private CityDAO cityDAO;

    public CityService(CityDAO cityDAO) {
    	this.cityDAO = cityDAO;
	}
    

	public int save(CityDTO cityDTO) throws ClassNotFoundException, SQLException {
		return cityDAO.save(cityDTO);
  	 
    }
	
	public int update(CityDTO cityDTO) throws ClassNotFoundException, SQLException {
		return cityDAO.update(cityDTO);
  	 
    }
	public int delete(int id) throws ClassNotFoundException, SQLException {
		return cityDAO.delete(id);
  	 
    }
}

	


	

