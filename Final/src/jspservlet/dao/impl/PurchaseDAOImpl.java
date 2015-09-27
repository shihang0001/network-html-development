package jspservlet.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jspservlet.dao.PurchaseDAO;
import jspservlet.db.DBConnect;
import jspservlet.vo.Purchase;

public class PurchaseDAOImpl implements PurchaseDAO {

	public void addTo(int id, String username, int amount, int state,
			float height, float price, String color, String address)
			throws Exception {
		// TODO Auto-generated method stub
		String sql = "insert into purchaselist(productId,username,amount,state,height,price,color,address) values(?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null ;   
        DBConnect dbc = null;
     // ������������ݿ�ľ������   
        try{   
            // �������ݿ�   
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ; 
            pstmt.setLong(1,id);  
            pstmt.setString(2,username);
            pstmt.setLong(3,amount);
            pstmt.setLong(4,state);
            pstmt.setLong(5,(long)height);
            pstmt.setLong(6,(long)price);
            pstmt.setString(7,color);
            pstmt.setString(8,address);
            int i = pstmt.executeUpdate();
            pstmt.close() ;   
        }catch (SQLException e){   
            System.out.println(e.getMessage());   
        }finally{   
            // �ر����ݿ�����   
            dbc.close() ;   
	}
 
	}


	public void queryByUsername(String username,
			ArrayList<Purchase> unpaidList, ArrayList<Purchase> paidList) {
		// TODO Auto-generated method stub
		String sql = "select * from purchaselist where username=?";
        PreparedStatement pstmt = null ;   
        DBConnect dbc = null;
     // ������������ݿ�ľ������   
        try{   
            // �������ݿ�   
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ; 
            pstmt.setString(1,username) ;     
            // �������ݿ��ѯ����   
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){   
                // ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��person����  
            	Purchase pur = new Purchase();
            	pur.setId(rs.getInt("id"));
            	pur.setAmount(rs.getInt("amount"));
            	pur.setAddress(rs.getString("address"));
            	pur.setHeight(rs.getFloat("height"));
            	pur.setPrice(rs.getFloat("price"));
            	pur.setColor(rs.getString("color"));
            	if(rs.getInt("state") == 0){
            		unpaidList.add(pur);
            	}
            	else{
            		paidList.add(pur);
            	}
            }rs.close() ; 
            pstmt.close() ;   
        }catch (SQLException e){   
            System.out.println(e.getMessage());   
        }finally{   
            // �ر����ݿ�����   
            dbc.close() ;   
        }   
	}


	public void updateById(int id) {
		// TODO Auto-generated method stub
		String sql = "update purchaselist set state = '1' where id=?";
		PreparedStatement pstmt = null ;   
        DBConnect dbc = null;
     // ������������ݿ�ľ������   
        try{   
            // �������ݿ�   
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ; 
            pstmt.setLong(1,id) ;     
            // �������ݿ��ѯ����   
            int i = pstmt.executeUpdate();
            pstmt.close() ;   
        }catch (SQLException e){   
            System.out.println(e.getMessage());   
        }finally{   
            // �ر����ݿ�����   
            dbc.close() ;   
        }   
	}


	public void deleteById(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from purchaselist where id=?";
		PreparedStatement pstmt = null ;   
        DBConnect dbc = null;
     // ������������ݿ�ľ������   
        try{   
            // �������ݿ�   
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ; 
            pstmt.setLong(1,id) ;     
            // �������ݿ��ѯ����   
            int i = pstmt.executeUpdate();
            pstmt.close() ;   
        }catch (SQLException e){   
            System.out.println(e.getMessage());   
        }finally{   
            // �ر����ݿ�����   
            dbc.close() ;   
        }   
		
	}
	
}
		
		

	
