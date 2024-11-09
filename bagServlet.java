 package com.amstech.dream.bags.servlet;

import java.io.IOException;

import com.amstech.dream.bags.dao.BagDAO;
import com.amstech.dream.bags.dto.BagDTO;
import com.amstech.dream.bags.service.BagService;
import com.amstech.dream.bags.util.DBUtil;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/bag")
public class bagServlet extends HttpServlet {
	
	private BagService bagService;
	private BagDAO bagDAO;
	private DBUtil dbUtil;

    public bagServlet() {
    	
    	System.out.println("Creating BagServlet Object");
		this.dbUtil = new DBUtil();
		this.bagDAO = new BagDAO(dbUtil);
		this.bagService = new BagService(bagDAO);
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("BagServlet: DoGet method");

        String task = request.getParameter("task");
        System.out.println("task: " + task);

        if (task.equalsIgnoreCase("findByName")) {
            findByName(request, response);
        } else if (task.equalsIgnoreCase("findAll")) {
            findAll(request, response);
        }
	}



	private void findByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String name = request.getParameter("name");
         System.out.println("Fetching Bag data by name.......: " + name);

         try {
             BagDTO bagDTO = bagService.findByName(name);
             if (bagDTO != null) {
                 System.out.println("Bag found successfully............ name: " + bagDTO.getBag_name());
                 RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
                 request.setAttribute("bagDTO", bagDTO);
                 rd.forward(request, response);
             } else {
                 System.out.println("Failed to find Bag by name: " + name);
                 RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
                 request.setAttribute("status", "Failed");
                 request.setAttribute("message", "Failed to find Bag by name: " + name);
                 request.setAttribute("redirectUrl", "home.jsp");
                 rd.forward(request, response);
             }
         } catch (Exception e) {
             e.printStackTrace();
             RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
             request.setAttribute("status", "Failed");
             request.setAttribute("message", e.getMessage());
             request.setAttribute("redirectUrl", "home.jsp");
             rd.forward(request, response);
         }
     }
		
	


	private void findAll(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
