package jspservlet.dao;
import java.util.ArrayList;

import jspservlet.vo.Product;

public interface ProductDAO {
	public void queryAllPro(ArrayList<Product> allProList)throws Exception;
	public void queryById(Product product)throws Exception;

}
