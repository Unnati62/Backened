package com.amstech.dream.bags.service;

import java.sql.SQLException;

import com.amstech.dream.bags.dao.PaymentDAO;
import com.amstech.dream.bags.dto.PaymentDTO;

public class PaymentService {

	

private PaymentDAO paymentDAO;

	public PaymentService(PaymentDAO paymentDAO) {
		this.paymentDAO = paymentDAO;
	}
 


	public int save(PaymentDTO paymentDTO) throws ClassNotFoundException, SQLException {
		return paymentDAO.save(paymentDTO);
  	 
 }
	
}



