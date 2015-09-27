package jspservlet.dao;

import jspservlet.vo.NewUser;

public interface NewUserDAO {
	public int addNewUser(NewUser newUser) throws Exception;

}
