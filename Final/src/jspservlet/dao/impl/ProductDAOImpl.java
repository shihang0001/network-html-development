package jspservlet.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jspservlet.dao.ProductDAO;
import jspservlet.db.DBConnect;
import jspservlet.vo.Product;

public class ProductDAOImpl implements ProductDAO {
	public void queryAllPro(ArrayList<Product> allProList)throws Exception {
		// TODO Auto-generated method stub
		String sql="select * from productlist";
		PreparedStatement pstmt = null ;   
        DBConnect dbc = null;
     // ������������ݿ�ľ������   
        try{   
        	// �������ݿ�   
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ;
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){  
            	Product pro = new Product();
            	pro.setId(rs.getInt("id"));
            	pro.setPrice(rs.getFloat("price"));
            	pro.setHeight(rs.getFloat("height"));
            	pro.setColor(rs.getString("color"));
            	pro.setAddress(rs.getString("address"));
            	allProList.add(pro);
            }
            rs.close() ; 
            pstmt.close() ;
        }catch (SQLException e){   
            System.out.println(e.getMessage());   
        }finally{ 
        	 // �ر����ݿ�����   
            dbc.close() ;  
        }
           
            
            
            
	}

	public void queryById(Product product)throws Exception {
		// TODO Auto-generated method stub
		String sql = "select * from productList where id=?";
        PreparedStatement pstmt = null ;   
        DBConnect dbc = null;
     // ������������ݿ�ľ������   
        try{   
            // �������ݿ�   
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ; 
            pstmt.setString(1,String.valueOf(product.getId())) ;     
            // �������ݿ��ѯ����   
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){   
                // ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��person����  
            	product.setAddress(rs.getString("address"));
            	product.setColor(rs.getString("color"));
            	product.setDetail(rs.getString("details"));
            	product.setHeight(rs.getFloat("height"));
            	product.setPrice(rs.getFloat("price"));
            }rs.close() ; 
            pstmt.close() ;   
        }catch (SQLException e){   
            System.out.println(e.getMessage());   
        }finally{   
            // �ر����ݿ�����   
            dbc.close() ;   
        }   
	}
		
		
}
	
		