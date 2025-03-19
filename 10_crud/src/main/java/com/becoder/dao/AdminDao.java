package com.becoder.dao;

import com.becoder.entity.Admin;

public interface AdminDao {
 
	public Admin loginAdmin(String username,String password);
}
