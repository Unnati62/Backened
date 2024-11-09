package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.PaymentModeDAO;
import com.amstech.dream.bags.dto.PaymentModeDTO;

public class PaymentModeService {
	

private PaymentModeDAO paymentModeDAO;

	public PaymentModeService(PaymentModeDAO paymentModeDAO) {
		this.paymentModeDAO = paymentModeDAO;
	}
 


	public int save(PaymentModeDTO paymentModeDTO) throws ClassNotFoundException, SQLException {
		return paymentModeDAO.save(paymentModeDTO);
  	 
 }

	public int update(PaymentModeDTO paymentModeDTO) throws ClassNotFoundException, SQLException {
		return paymentModeDAO.update(paymentModeDTO);
  	 
 }

	
}

