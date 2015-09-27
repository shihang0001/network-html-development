package jspservlet.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChooseServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws IOException{
		
    }
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException{
		String str = req.getParameter("submit");
		if(str.equals("Go shopping")){
			try {
				res.sendRedirect("./product.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(str.equals("Go to shooping cart")){
			try {
				res.sendRedirect("./shoppingCart.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
