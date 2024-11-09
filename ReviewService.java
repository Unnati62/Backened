package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.ReviewDAO;
import com.amstech.dream.bags.dto.ReviewDTO;


public class ReviewService {

	
	   private ReviewDAO reviewDAO;

		public ReviewService(ReviewDAO reviewDAO) {
			this.reviewDAO = reviewDAO;
		}
	    

		public int save(ReviewDTO reviewDTO) throws ClassNotFoundException, SQLException {
			return reviewDAO.save(reviewDTO);
	  	 
	    }
		public int update(ReviewDTO reviewDTO) throws ClassNotFoundException, SQLException {
			return reviewDAO.update(reviewDTO);
	  	 
	    }
		public int delete(int id) throws ClassNotFoundException, SQLException {
			return reviewDAO.delete(id);
	  	 
	    }
	}

