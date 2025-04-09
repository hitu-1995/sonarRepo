package com.cjc.store.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.store.model.Product;
import com.cjc.store.model.User;
import com.cjc.store.service.ProductService;

@Controller
public class ProductController {

	private Logger  logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String landingPage() {
		 logger.info(" landingPage Called");
		return "index";
	}
	
	@RequestMapping(value = "/log", method = RequestMethod.POST)
	public String loginCheck(@RequestParam String username, 
							 @RequestParam String password,
							 Model model) {
		
		
		List<Product> productList = productService.loginCheck(username,password);
		if(productList!=null) {
		model.addAttribute("data", productList);
		return "success";
		}
		else
		return "index";	
	}

	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public String createProduct(@ModelAttribute Product product, Model model) {
		  productService.createProduct(product);
		  model.addAttribute("data",productService.getAllProductData());
		return "success";
	}
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public String  createUser(@ModelAttribute User user) {
		productService.saveUSer(user);
		return "index";
	}
	
	@RequestMapping(value = "/pid", method = RequestMethod.GET)
	public String getProduct(@RequestParam int pid) {
		 productService.getProduct(pid);
		 return "index";
	}
	
	@RequestMapping(value = "/logPage" , method = RequestMethod.GET)
	public String logPage() {
		
		return "login";
	}
	@RequestMapping(value = "/userRegPage" , method = RequestMethod.GET)
	public String userRegPage() {
		
		return "userRegister";
	}
	@RequestMapping(value = "/productRegPage" , method = RequestMethod.GET)
	public String productRegPage() {
		
		return "productRegister";
	}
	
	
}
