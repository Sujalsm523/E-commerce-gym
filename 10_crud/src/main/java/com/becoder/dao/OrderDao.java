package com.becoder.dao;

import java.util.List;

import com.becoder.entity.Order;

     public interface OrderDao {
              public int saveOrder(Order order);
	
	         public Order getOrderById(int id);
	
	         public List<Order> getAllOrder();
	               
	         public void deleteOrder(int id);
}
