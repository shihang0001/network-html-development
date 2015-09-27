package jspservlet.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.PurchaseDAO;
import jspservlet.dao.impl.PurchaseDAOImpl;

public class AddServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		    throws IOException{
		 }
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		    throws IOException{
		HttpSession session=req.getSession();
		if ((String)session.getAttribute("username") == null){
			res.sendRedirect("./unlogin.jsp");
		}
		else{
			String username = (String)session.getAttribute("username");
			int amount =Integer.parseInt(req.getParameter("amount"));
		    int id =(Integer)session.getAttribute("lookId");
	        float price =(Float)session.getAttribute("lookPrice");
	    	float height =(Float)session.getAttribute("lookHeight");
			String color = (String)session.getAttribute("lookColor");
			String address = (String)session.getAttribute("lookAddress");
			int state = 0;
			PurchaseDAO dao = new PurchaseDAOImpl();
			try {
				dao.addTo(id,username,amount,state,height,price,color,address);
		    } catch (Exception e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
			 }
			   res.sendRedirect("./successAdd.jsp");	   
		}
	}

}
