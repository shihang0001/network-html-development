package SmartLight.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import SmartLight.db.DBConnect;
import SmartLight.dao.UserDao;
import SmartLight.vo.User;

public  class UserDaoImpl implements UserDao {

	public int queryByUsername(User user) throws Exception {
		// TODO Auto-generated method stub
		int flag = 0;
		String sql = "select * from userinfo where username=?";
        PreparedStatement pstmt = null ;   
        DBConnect dbc = null;   
  
        // 下面是针对数据库的具体操作   
        try{   
            // 连接数据库   
            dbc = new DBConnect() ;   
            pstmt = dbc.getConnection().prepareStatement(sql) ; 
            pstmt.setString(1,user.getUsername()) ;     
            // 进行数据库查询操作   
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){   
                // 查询出内容，之后将查询出的内容赋值给person对象   
                if(rs.getString("password").equals(user.getPassword())){
                	flag = 1;
              } 
            }   
            rs.close() ; 
            pstmt.close() ;   
        }catch (SQLException e){   
            System.out.println(e.getMessage());   
        }finally{   
            // 关闭数据库连接   
            dbc.close() ;   
        }   
		return flag;
	}

	public void registerNewUser(User user) throws Exception {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO userinfo(username,password,address,mail_address,phone_number)values(?,?,?,?,?)"; 
        PreparedStatement pstmt = null ;   
        DBConnect dbc = null;   
   
        try{   
            // 连接数据库   
            dbc = new DBConnect() ;   
           pstmt = dbc.getConnection().prepareStatement(sql) ; 
           pstmt.setString(1,user.getUsername()) ; 
           pstmt.setString(2,user.getPassword()) ; 
           pstmt.setString(3,user.getAddress()) ; 
           pstmt.setString(4,user.getE_mail()) ;
           pstmt.setString(5,user.getPhone()) ;
            // 进行数据库更新操作   
            pstmt.executeUpdate();
           
          
            pstmt.close() ;   
        }catch (SQLException e){   
            System.out.println(e.getMessage());   
        }finally{   
            // 关闭数据库连接   
            dbc.close() ;   
        }   
	
	}	
		 
  
     }
	

