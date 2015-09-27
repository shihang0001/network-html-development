package SmartLight.dao;

import SmartLight.vo.User;

public interface UserDao {	
	public int queryByUsername(User user) throws Exception;
	public void registerNewUser(User user) throws Exception;
}

