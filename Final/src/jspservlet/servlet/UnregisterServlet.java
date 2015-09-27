package jspservlet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.NewUserDAO;
import jspservlet.dao.PurchaseDAO;
import jspservlet.dao.impl.NewUserDAOImpl;
import jspservlet.dao.impl.PurchaseDAOImpl;
import jspservlet.vo.NewUser;

public class UnregisterServlet extends HttpServlet {
	 public void doGet(HttpServletRequest req, HttpServletResponse res)
		     throws IOException, ServletException{
			 
		 }
		 public void doPost(HttpServletRequest req, HttpServletResponse res)
		     throws IOException, ServletException{
			 NewUser newUser = new NewUser();
			 newUser.setUsername(req.getParameter("username"));
			 newUser.setPassword(req.getParameter("password"));
			 newUser.setConpassword(req.getParameter("conpassword"));
			 
			 NewUserDAO dao = new NewUserDAOImpl();   
			 int flag = 0;
			 try {
				flag = dao.addNewUser(newUser);
			 } catch (Exception e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
			 } 
			 if (flag == 1){
				 res.sendRedirect("./unregister1.jsp");
				 return;
			 }
			 if (flag == 2){
				 res.sendRedirect("./unregister2.jsp");
				 return;
			 }
			 if(flag == 3){   
				 HttpSession session=req.getSession();   
		         session.setAttribute("username", newUser.getUsername());   
		         res.sendRedirect("./product.jsp");
		         return;
		     } 
			 else {   
		         res.sendRedirect("./error.jsp");
		     }
		 }
}
