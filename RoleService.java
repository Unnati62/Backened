package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.RoleDAO;
import com.amstech.dream.bags.dto.RoleDTO;

public class RoleService {

	private RoleDAO roleDAO;

    public RoleService(RoleDAO roleDAO) {
    	this.roleDAO = roleDAO;
	}
    

	public int save(RoleDTO roleDTO) throws ClassNotFoundException, SQLException {
		return roleDAO.save(roleDTO);
  	 
    }
	
	public int update(RoleDTO roleDTO) throws ClassNotFoundException, SQLException {
		return roleDAO.update(roleDTO);
  	 
    }
	public int delete(int id) throws ClassNotFoundException, SQLException {
		return roleDAO.delete(id);
  	 
    }


}

	


	


	

