package SmartLight.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SmartLight.dao.UserDao;
import SmartLight.dao.impl.UserDaoImpl;
import SmartLight.vo.User;

public class LoginServlet extends HttpServlet {
	
	 public void doGet(HttpServletRequest req, HttpServletResponse res)
	    throws IOException, ServletException{
	 }
	
	 public void doPost(HttpServletRequest req, HttpServletResponse res)
	    throws IOException, ServletException{
		 User user = new User();
		 user.setUsername(req.getParameter("username"));
		 user.setPassword(req.getParameter("password"));
		 
		 UserDao dao = new UserDaoImpl();   
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
	         session.setAttribute("login",1);
	         res.sendRedirect("./index.jsp");
	        } else { 
	         res.sendRedirect("./Error.jsp");
	        }
	 }
}
