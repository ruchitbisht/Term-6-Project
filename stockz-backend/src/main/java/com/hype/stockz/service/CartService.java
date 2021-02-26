package com.hype.stockz.service;

import java.util.List;
import com.hype.stockz.model.Cart;

public interface CartService
{
	public void addToCart(Cart cart);
	public void deleteFromCart(int cartId);
	public Cart getFromCart(int cartId);
}