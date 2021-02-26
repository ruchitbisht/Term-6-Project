package com.hype.stockz.service;

import java.util.List;
import com.hype.stockz.model.Product;

public interface ProductService
{
	public void add(Product Product);
	public void update(Product Product);
	public void delete(int id);
	public Product getProductById(int id);
	public List findAll();
}