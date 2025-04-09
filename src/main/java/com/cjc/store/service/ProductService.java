package com.cjc.store.service;

import java.util.List;

import com.cjc.store.model.Product;
import com.cjc.store.model.User;

public interface ProductService {

	List<Product> getAllProductData();
	
	Product getProduct(int pid);
	
	String createProduct(Product product);

	List<Product> loginCheck(String username, String password);

	void saveUSer(User user);
	
	
}
