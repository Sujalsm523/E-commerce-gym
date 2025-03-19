package com.becoder.dao;

import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.becoder.entity.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {
	
    @Autowired
    private HibernateTemplate hibernateTemplate;
	
    public int saveUser(User user) {
        int i = (Integer) hibernateTemplate.save(user);
        return i;
    }

    public User loginUser(String email, String password) {
        String sql = "from User where email = :em and password = :pwd";
		
        User us=  hibernateTemplate.execute(session -> {
            Query<User> query = session.createQuery(sql, User.class);
            query.setParameter("em", email);
            query.setParameter("pwd", password);
            return query.uniqueResult();
        });
        return us;
    }
}
