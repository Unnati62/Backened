package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.OfferDAO;
import com.amstech.dream.bags.dto.OfferDTO;



public class OfferService {

	private OfferDAO offerDAO;
	
	public OfferService(OfferDAO offerDAO) {
		this.offerDAO = offerDAO;
	}
 


	public int save(OfferDTO offerDTO) throws ClassNotFoundException, SQLException {
		return offerDAO.save(offerDTO);
  	 }
	public int update(OfferDTO offerDTO) throws ClassNotFoundException, SQLException {
		return offerDAO.update(offerDTO);
  	 }
	public int delete(int id) throws ClassNotFoundException, SQLException {
		return offerDAO.delete(id);
  	 }
}