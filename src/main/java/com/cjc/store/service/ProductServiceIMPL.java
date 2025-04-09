package com.cjc.store.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.store.model.Product;
import com.cjc.store.model.User;
import com.cjc.store.repository.ProductRepository;
import com.cjc.store.repository.UserRepository;

@Service
public class ProductServiceIMPL implements ProductService{

	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	
	
	@Override
	public List<Product> getAllProductData() {
	
		return productRepository.findAll();
	}

	@Override
	public Product getProduct(int pid) {
		
		return productRepository.findById(pid).get();
	}

	@Override
	public String createProduct(Product product) {
		productRepository.save(product);
		return "Product Created";
	}

	@Override
	public List<Product> loginCheck(String username, String password) {
		
		Optional<User> user = userRepository.findByUsernameAndPassword(username,password);
		
		if(user.isPresent())
		return productRepository.findAll();
		else
		return null;	
	}

	@Override
	public void saveUSer(User user) {
		 userRepository.save(user);
	}

	
}
