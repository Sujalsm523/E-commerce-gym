package com.becoder.dao;

import com.becoder.entity.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Override
    public List<Cart> getAllCartItems() {
        return hibernateTemplate.loadAll(Cart.class);
    }

    @Override
    public Cart getCartItemById(int id) {
        return hibernateTemplate.get(Cart.class, id);
    }

    @Override
    public void addCartItem(Cart cart) {
        hibernateTemplate.save(cart);
    }

    @Override
    public void updateCartItem(Cart cart) {
        hibernateTemplate.update(cart);
    }

    @Override
    public void deleteCartItem(int id) {
        Cart cart = hibernateTemplate.get(Cart.class, id);
        if (cart != null) {
            hibernateTemplate.delete(cart);
        }
    }

    @Override
    public void clearCart() {
        List<Cart> cartItems = getAllCartItems();
        for (Cart cart : cartItems) {
            hibernateTemplate.delete(cart);
        }
    }
    
}