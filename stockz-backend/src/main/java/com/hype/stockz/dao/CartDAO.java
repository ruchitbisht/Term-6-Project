package com.hype.stockz.dao;


import com.hype.stockz.model.Cart;

public interface CartDAO
{
	public void addToCart(Cart cart);
	public void deleteFromCart(int cartId);
	public Cart getFromCart(int cartId);
}