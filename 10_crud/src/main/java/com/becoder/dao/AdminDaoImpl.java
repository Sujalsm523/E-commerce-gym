package com.becoder.dao;
import javax.transaction.Transactional;


import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.becoder.entity.Admin;


@Repository
@Transactional
public class AdminDaoImpl implements AdminDao{
	
	@Autowired
    private HibernateTemplate hibernateTemplate;
	
	public Admin loginAdmin(String username, String password) {
        String hql = "from 	Admin where username = :us and password = :pd";
		
        Admin admin=  hibernateTemplate.execute(session -> {
            Query<Admin> query = session.createQuery(hql, Admin.class);
            query.setParameter("us", username);
            query.setParameter("pd", password);
            return query.uniqueResult();
        });
        return admin;
    }

}
