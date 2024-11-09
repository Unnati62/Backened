package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.StateDAO;
import com.amstech.dream.bags.dto.StateDTO;

public class StateService {

	private StateDAO stateDAO;

    public StateService(StateDAO stateDAO) {
    	this.stateDAO = stateDAO;
	}
    

	public int save(StateDTO stateDTO) throws ClassNotFoundException, SQLException {
		return stateDAO.save(stateDTO);
  	 
    }
	
     public int delete(int id) throws ClassNotFoundException, SQLException {
		return stateDAO.delete(id);
  	 
    }
}

	

