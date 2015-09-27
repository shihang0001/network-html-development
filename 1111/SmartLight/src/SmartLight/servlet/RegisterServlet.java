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

public class RegisterServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		    throws IOException, ServletException{
		 }
		
		 public void doPost(HttpServletRequest req, HttpServletResponse res)
		    throws IOException, ServletException{
			
			 HttpSession session=req.getSession();   
			 User user = new User();
			 user.setUsername(req.getParameter("username"));
			 user.setPassword(req.getParameter("password"));
			 user.Address(req.getParameter("address"));
			 user.setE_mail(req.getParameter("mail_address"));
			 user.setPhone(req.getParameter("phone"));
			 UserDao dao = new UserDaoImpl();   
		     int flag = 0;
		     try {
					flag = dao.queryByUsername(user);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			} 
			 if(flag == 1){
				session.setAttribute("RegisterError", 1);
				res.sendRedirect("./Register.jsp");
		        } else { 
		        try{
		        	dao.registerNewUser(user);
				    session.setAttribute("username", user.getUsername());
				    session.setAttribute("login",1);
			        res.sendRedirect("./Welcome.jsp");	
		        
		        }catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
		        	} 
		       }
		 }
	
	
}
