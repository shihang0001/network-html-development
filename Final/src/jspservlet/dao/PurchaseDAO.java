package jspservlet.dao;

import java.util.ArrayList;

import jspservlet.vo.Purchase;

public interface PurchaseDAO {
	public void addTo(int id, String username, int amount, int state,
			float height, float price, String color, String address)throws Exception;
	public void queryByUsername(String username,ArrayList<Purchase> unpaidList,ArrayList<Purchase> paidList );
	public void updateById(int id);
	public void deleteById(int id);

}
