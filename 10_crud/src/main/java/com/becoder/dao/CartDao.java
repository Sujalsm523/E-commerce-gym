package com.becoder.dao;

import com.becoder.entity.Cart;
import java.util.List;

public interface CartDao {
    List<Cart> getAllCartItems();
    Cart getCartItemById(int id);
    void addCartItem(Cart cart);
    void updateCartItem(Cart cart);
    void deleteCartItem(int id);
    void clearCart();
}
