package jspservlet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.PurchaseDAO;
import jspservlet.dao.UserDAO;
import jspservlet.dao.impl.PurchaseDAOImpl;
import jspservlet.dao.impl.UserDAOImpl;
import jspservlet.vo.User;

public class UnloginServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		    throws IOException, ServletException{
		 }
		
		 public void doPost(HttpServletRequest req, HttpServletResponse res)
		    throws IOException, ServletException{
			 User user = new User();
			 user.setUsername(req.getParameter("username"));
			 user.setPassword(req.getParameter("password"));
			 
			 UserDAO dao = new UserDAOImpl();   
		     int flag = 0;
		     try {
					flag = dao.queryByUsername(user);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			} 
			 if(flag == 1){   
				 HttpSession session=req.getSession();   
		         session.setAttribute("username", user.getUsername());   
			     res.sendRedirect("./product.jsp");
		        } else {   
		         res.sendRedirect("./error.jsp");
		        }
		 }

}
