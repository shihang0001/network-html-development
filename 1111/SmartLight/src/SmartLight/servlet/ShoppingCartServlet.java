package SmartLight.servlet;

import java.io.IOException;
import java.util.ArrayList;

import SmartLight.dao.ProductDao;
import SmartLight.dao.impl.ProductDaoImpl;
import SmartLight.vo.Product;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShoppingCartServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException{

		}
			
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException{
		
		ArrayList<Product> proList = (ArrayList<Product>)req.getSession().getAttribute("list");
		
		if((String)req.getParameter("proDelete") != null){
		  	int j = Integer.parseInt((String)req.getParameter("proDelete"));
		  	proList.get(j).setProBuy(null);
		  	proList.get(j).setProNum(null);
		  	res.sendRedirect("./ShoppingCart.jsp");
		}else{
			
			try{
				ProductDao dao = new ProductDaoImpl();
				dao.updateInvetory(req);
				dao.queryProductList(req);

			
			}catch(Exception e) {
				 System.out.println(e.getMessage());
			}finally{
				
				res.sendRedirect("./Pay.jsp");	
				
			}
			
			
			
		}
		
	}
	
}