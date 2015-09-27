package SmartLight.dao;

import javax.servlet.http.HttpServletRequest;
import SmartLight.vo.Product;

public interface ProductDao {
	public void queryProduct(Product product, HttpServletRequest req) throws Exception;
	public void queryProductList(HttpServletRequest req) throws Exception;
	public void updateInvetory(HttpServletRequest req) throws Exception;
}
