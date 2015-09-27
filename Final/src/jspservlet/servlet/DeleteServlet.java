package jspservlet.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspservlet.dao.PurchaseDAO;
import jspservlet.dao.impl.PurchaseDAOImpl;

public class DeleteServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		    throws IOException{
		 }
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		    throws IOException{
		 int id =Integer.parseInt(req.getParameter("id"));
		 PurchaseDAO dao = new PurchaseDAOImpl();
		   try {
				dao.deleteById(id);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		 }
		   res.sendRedirect("./shoppingCart.jsp");
	}

}
