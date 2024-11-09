package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.UserDAO;
import com.amstech.dream.bags.dto.UserDTO;



public class UserService {
	 private UserDAO userDAO;

     public UserService(UserDAO userDAO) {
 		this.userDAO = userDAO;
 	}
     

 	public int save(UserDTO userDTO) throws Exception {
		int count =userDAO.save(userDTO);
		if(count != 0 ) {
			
		}
		return count;
	}
	
	public int update(UserDTO userDTO) throws Exception {
		return userDAO.update(userDTO);
   	 
     }
	public int delete(int id) throws Exception {
		return userDAO.deleteById(id);
   	 
     }


	public UserDTO login(String email ,String password) throws Exception {
		return userDAO.login(email, password);
	}
}
