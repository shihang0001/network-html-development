package jspservlet.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jspservlet.dao.NewUserDAO;
import jspservlet.db.DBConnect;
import jspservlet.vo.NewUser;

public class NewUserDAOImpl implements NewUserDAO {

	public int addNewUser(NewUser newUser) throws Exception {
		// TODO Auto-generated method stub
		int flag = 0;
		String sql1 = "select * from userinfo where username=?";
		String sql2 = "insert into userinfo (username,password) values(?,?)";
		PreparedStatement pstmt = null ;
        DBConnect dbc = null;
        if (newUser.getPassword().equals(newUser.getConpassword()) == false){
        	flag = 1;
        }
        else {
        	 try{   
                 // �������ݿ�   
                 dbc = new DBConnect() ;   
                 pstmt = dbc.getConnection().prepareStatement(sql1) ; 
                 pstmt.setString(1,newUser.getUsername()) ;     
                 // �������ݿ��ѯ����   
                 ResultSet rs = pstmt.executeQuery();
                 if(rs.next()){   
                     // ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��person����   
                     flag = 2;
                     rs.close() ; 
                     pstmt.close() ;  
                 }  
                 else {
                	 pstmt = dbc.getConnection().prepareStatement(sql2) ;
                	 pstmt.setString(1, newUser.getUsername());
                	 pstmt.setString(2, newUser.getPassword() );
                	 int i = pstmt.executeUpdate();
                	 pstmt.close() ;
                	 flag = 3;
                 }
                 
             }catch (SQLException e){   
                 System.out.println(e.getMessage());   
             }finally{   
                 // �ر����ݿ�����   
                 dbc.close() ;   
        }
        }
		return flag;
	}

}