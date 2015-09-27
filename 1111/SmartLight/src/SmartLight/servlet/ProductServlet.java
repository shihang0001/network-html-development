package SmartLight.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SmartLight.vo.Product;

public class ProductServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException{
			
		}
				
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException{
			
		HttpSession session=req.getSession(); 
		 
			if(session.getAttribute("login") != null){
				ArrayList<Product> proList = (ArrayList<Product>)session.getAttribute("list");	
				int select= Integer.parseInt((String)req.getSession().getAttribute("select"));
				int invetory = Integer.parseInt((String)proList.get(select).getProInvetory());
				int proNum = Integer.parseInt(req.getParameter("proNum"));
				if(invetory!= 0 || invetory >= proNum ){
					
					
					proList.get(select).setProBuy("1");
					proList.get(select).setProNum(req.getParameter("proNum"));
					req.getSession().removeAttribute("select");
					req.getSession().setAttribute("list",proList);
					req.removeAttribute("invetory");
					res.sendRedirect("./Skip.jsp");
				}else{
					req.removeAttribute("invetory");
					res.sendRedirect("./Error.jsp");
				}
				
			}else{
					req.removeAttribute("invetory");
					res.sendRedirect("./Error.jsp");
				}
			}
			
	 }
					 			 
		
		
