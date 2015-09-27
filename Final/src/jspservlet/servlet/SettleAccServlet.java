package jspservlet.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.PurchaseDAO;
import jspservlet.dao.impl.PurchaseDAOImpl;
import jspservlet.vo.Purchase;

public class SettleAccServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		    throws IOException{
		 }
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		    throws IOException{
		HttpSession session=req.getSession();
		String username = (String)session.getAttribute("username");
		ArrayList<Purchase> unpaidList = new ArrayList<Purchase>();
	    ArrayList<Purchase> paidList = new ArrayList<Purchase>();
	    PurchaseDAO dao = new PurchaseDAOImpl();
		try {
		     dao.queryByUsername(username,unpaidList,paidList);
			  } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		    }
		if(unpaidList!=null&&unpaidList.size()!=0){
			for (int i =0;i<unpaidList.size();i++){
				try {
				     dao.updateById(unpaidList.get(i).getId());
			    } catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
				    }
			}
		}
		
		
			
		   res.sendRedirect("./successSet.jsp");
	}

}
