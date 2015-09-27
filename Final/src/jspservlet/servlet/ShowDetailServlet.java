package jspservlet.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.ProductDAO;
import jspservlet.dao.impl.ProductDAOImpl;
import jspservlet.vo.Product;

public class ShowDetailServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		    throws IOException{
		 }
		
    public void doPost(HttpServletRequest req, HttpServletResponse res)
		    throws IOException{
			 String str = req.getParameter("id");
			 int id = Integer.parseInt(str);
			 Product pro = new Product();
			 pro.setId(id);
			 ProductDAO dao = new ProductDAOImpl();
			 try {
					dao.queryById(pro);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			 }
			 HttpSession session=req.getSession();   
	         session.setAttribute("lookId", pro.getId());
	         session.setAttribute("lookHeight", pro.getHeight());
	         session.setAttribute("lookColor", pro.getColor());
	         session.setAttribute("lookPrice", pro.getPrice());
	         session.setAttribute("lookDetail", pro.getDetail());
	         session.setAttribute("lookAddress", pro.getAddress());
	         HttpSession session1=req.getSession();
	 		if ((String)session1.getAttribute("username") == null){
	 			res.sendRedirect("./unproductadd.jsp");
	 		}
	 		else{
	 			res.sendRedirect("./proDetail.jsp");
	 		}
		 }

}
