package SmartLight.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import SmartLight.db.DBConnect;
import SmartLight.dao.ProductDao;
import SmartLight.vo.Product;

public class ProductDaoImpl implements ProductDao {

	public void queryProduct(Product product, HttpServletRequest req) throws Exception {
		String sql = "select * from proinfo where proname=?";
        PreparedStatement pstmt = null ;   
        DBConnect dbc = null;    
        try{   
             
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ; 
            pstmt.setString(1,product.getProName()) ;     
          
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){   
                 
            	req.getSession().setAttribute("proname", rs.getString("proname"));
            	req.getSession().setAttribute("price", rs.getString("price"));
            	req.getSession().setAttribute("parameter", rs.getString("parameter"));
            	req.getSession().setAttribute("picture", rs.getString("picture"));
            	req.getSession().setAttribute("invetory", rs.getString("invetory"));            	
      }   

            rs.close() ; 
            pstmt.close() ;
    }catch (SQLException e){   
          System.out.println(e.getMessage());   
        }finally{    
            dbc.close() ;   
        }   
		   
	}
	
	public void queryProductList(HttpServletRequest req) throws Exception{
		String sql = "select * from proinfo";
        PreparedStatement pstmt = null ;   
        DBConnect dbc = null;
        ArrayList<Product> proList = new ArrayList<Product>();
        try{   
            
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ;     
            
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){   
                
            	 Product pro = new Product();
            	 pro.setProName(rs.getString("proname"));
            	 pro.setPrice(rs.getString("price"));
            	 pro.setParameter(rs.getString("parameter"));
            	 pro.setImgUrl(rs.getString("picture"));
            	 pro.setProInvetory(rs.getString("Invetory"));
            	 proList.add(pro);
      }   
            req.getSession().setAttribute("query", "1");
            req.getSession().setAttribute("list", proList);
            rs.close() ; 
            pstmt.close() ;
    }catch (SQLException e){   
          System.out.println(e.getMessage());   
        }finally{   
       
            dbc.close() ;   
        }   	
	}
	
	
	
	public void updateInvetory(HttpServletRequest req) throws Exception{
	
		ArrayList<Product> proList = (ArrayList<Product>)req.getSession().getAttribute("list");
		int length =proList.size();
		int data[][]= new int[length][2];
		
		for(int i = 0 ; i< proList.size(); i++){
			if(proList.get(i).getProBuy() != null){	
				data[i][0] = 1;				
				data[i][1] = Integer.parseInt((String)proList.get(i).getProNum());
		
			}
		}
		
		
		
		
		for(int j = 0 ; j < proList.size();j++){
			if(data[j][0] == 1){
				data[j][1] = Integer.parseInt((String)proList.get(j).getProInvetory()) - data[j][1];
				String sql = "update proinfo set invetory =  "+data[j][1]+" where Id = "+ (j+1);
				 PreparedStatement pstmt = null ;   
			     DBConnect dbc = null;
			     try{
			    	 
			    	 dbc = new DBConnect() ;   
			         pstmt = dbc.getConnection().prepareStatement(sql) ;     
			            
			        int rs = pstmt.executeUpdate(); 
			      
			     }catch (SQLException e){   
			          System.out.println(e.getMessage());   
			     }finally{   
			    	 dbc.close() ;   
			     } 
			
			}
		}
		
	}
	
	
	
	
}
