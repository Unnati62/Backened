package com.amstech.dream.bags.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amstech.dream.bags.dao.CountryDAO;
import com.amstech.dream.bags.dao.UserDAO;
import com.amstech.dream.bags.dto.CountryDTO;
import com.amstech.dream.bags.dto.UserDTO;

public class CountryService {

	private CountryDAO countryDAO;

    public CountryService(CountryDAO countryDAO) {
    	this.countryDAO = countryDAO;
	}
    

	public int save(CountryDTO countryDTO) throws ClassNotFoundException, SQLException {
		return countryDAO.save(countryDTO);
  	 
    }
	
	public int update(CountryDTO countryDTO) throws ClassNotFoundException, SQLException {
		return countryDAO.update(countryDTO);
  	 
    }
	
	public int delete(CountryDTO countryDTO) throws ClassNotFoundException, SQLException {
		return countryDAO.delete(countryDTO);
  	 
    }

}

