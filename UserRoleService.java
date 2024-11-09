package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.UserRoleDAO;
import com.amstech.dream.bags.dto.UserRoleDTO;


public class UserRoleService {

	 private UserRoleDAO userRoleDAO;

     public UserRoleService(UserRoleDAO userRoleDAO) {
 		this.userRoleDAO = userRoleDAO;
 	}
     

	public int save(UserRoleDTO userRoleDTO) throws ClassNotFoundException, SQLException {
		return userRoleDAO.save(userRoleDTO);
   	 
     }
	
	public int update(UserRoleDTO userRoleDTO) throws ClassNotFoundException, SQLException {
		return userRoleDAO.update(userRoleDTO);
   	 
     }
	public int delete(int id) throws ClassNotFoundException, SQLException {
		return userRoleDAO.delete(id);
   	 
     }
	
}
