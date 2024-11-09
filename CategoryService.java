package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.CategoryDAO;
import com.amstech.dream.bags.dto.CategoryDTO;



public class CategoryService {

	private CategoryDAO categoryDAO;

    public CategoryService(CategoryDAO categoryDAO) {
    	this.categoryDAO = categoryDAO;
	}
    

	public int save(CategoryDTO categoryDTO) throws ClassNotFoundException, SQLException {
		return categoryDAO.save(categoryDTO);
  	 
    }

	public int update(CategoryDTO categoryDTO) throws ClassNotFoundException, SQLException {
		return categoryDAO.update(categoryDTO);
  	 
    }

	public int delete(int id) throws ClassNotFoundException, SQLException {
		return categoryDAO.delete(id);
  	 
    }
	
}
