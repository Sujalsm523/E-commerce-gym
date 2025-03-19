package com.becoder.dao;
import com.becoder.entity.Emp;

import java.util.List;

public interface EmpDao {
     
	public int saveEmp(Emp emp);
	
	public Emp getEmpById(int id);
	
	public List<Emp> getAllEmp();
	
	public void update(Emp emp);
	
	public void deleteEmp(int id);
}
