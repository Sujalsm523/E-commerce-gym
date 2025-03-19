package com.becoder.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.becoder.entity.Emp;
import com.becoder.entity.Order;

@Repository
public class OrderDaoImpl implements OrderDao {

    @Autowired 
    private HibernateTemplate hibernateTemplate;

    /**
     * Save a new order to the database.
     * 
     * @param order The order entity to save.
     * @return The generated ID of the saved order.
     */
    @Transactional
    public int saveOrder(Order order) {
        Serializable result = hibernateTemplate.save(order);
        return Integer.parseInt(result.toString());
    }

    /**
     * Fetch an order by its ID.
     * 
     * @param id The ID of the order to fetch.
     * @return The corresponding order entity, or null if not found.
     */
    public Order getOrderById(int id) {
        return hibernateTemplate.get(Order.class, id);
    }

    /**
     * Retrieve all orders from the database.
     * 
     * @return A list of all orders.
     */
    public List<Order> getAllOrder() {
		List<Order> list=hibernateTemplate.loadAll(Order.class);
		return list;
    }

    /**
     * Delete an order by its ID.
     * 
     * @param id The ID of the order to delete.
     */
    @Transactional
    public void deleteOrder(int id) {
		Order order = hibernateTemplate.get(Order.class, id);
		hibernateTemplate.delete(order);
        }
    }

