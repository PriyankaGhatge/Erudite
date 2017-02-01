package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.erudite.dao.ProductDao;
import com.niit.erudite.model.BillingAddress;
import com.niit.erudite.model.Category;
import com.niit.erudite.model.Product;
import com.niit.erudite.model.ShippingAddress;
import com.niit.erudite.model.Supplier;
import com.niit.erudite.model.UserCustomer;

@Controller
public class HomeContoller {
	@Autowired
	ProductDao productdao;

	@RequestMapping("/newproduct")
	public ModelAndView newproduct() {
		System.out.println("Product Controller");
		Product p = new Product();
		ModelAndView model = new ModelAndView("newproduct");
		model.addObject("Productdata", p);
		model.addObject("Catname", productdao.listcategory_name());
		model.addObject("Suppname", productdao.listsupp_name());
		return model;
	}

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView model = new ModelAndView("index");
		return model;
	}
	@RequestMapping("index")
	public ModelAndView homepage() {
		ModelAndView model = new ModelAndView("index");
		return model;
	}
	
	/*@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView model = new ModelAndView("register");
		return model;
	}*/
	/*@RequestMapping("/register" )
	public ModelAndView register() {
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress = new ShippingAddress();
	
		User u = new User();
		u.setBillingAddress(billingAddress);
		u.setShippingAddress(shippingAddress);
	
		ModelAndView model = new ModelAndView("register");
		model.addObject("Userdata", u);
		return model;

		}*/
	
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView model = new ModelAndView("login");
		return model;
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView model = new ModelAndView("contact");
		return model;
	}
	
	@RequestMapping("/basket")
	public ModelAndView basket() {
		ModelAndView model = new ModelAndView("basket");
		return model;
	}
	@RequestMapping("/blog")
	public ModelAndView blog() {
		ModelAndView model = new ModelAndView("blog");
		return model;
	}
	@RequestMapping("/category")
	public ModelAndView category() {
		ModelAndView model = new ModelAndView("category");
		return model;
	}
	@RequestMapping("/category1")
	public ModelAndView categoryone() {
		Category c = new Category();
		ModelAndView model = new ModelAndView("category1");
		model.addObject("Categorydata",c);
		return model;
	}
	@RequestMapping("/supplier")
	public ModelAndView supplier() {
		Supplier s = new Supplier();
		ModelAndView model = new ModelAndView("supplier");
		model.addObject("Supplierdata",s);
		return model;
		}
	@RequestMapping("/category-full")
	public ModelAndView categoryfull() {
		ModelAndView model = new ModelAndView("category-full");
		return model;
	}
		@RequestMapping("/checkout1")
	public ModelAndView checkout1() {
		ModelAndView model = new ModelAndView("checkout1");
		return model;
	}
	@RequestMapping("/checkout2")
	public ModelAndView checkout2() {
		ModelAndView model = new ModelAndView("checkout2");
		return model;
	}
	@RequestMapping("/checkout3")
	public ModelAndView checkout3() {
		ModelAndView model = new ModelAndView("checkout3");
		return model;
	}
	@RequestMapping("/checkout4")
	public ModelAndView checkout4() {
		ModelAndView model = new ModelAndView("checkout4");
		return model;
	}
	@RequestMapping("/customer-account")
	public ModelAndView customeraccount() {
		ModelAndView model = new ModelAndView("customer-account");
		return model;
	}
	@RequestMapping("/customer-order")
	public ModelAndView customerorder() {
		ModelAndView model = new ModelAndView("customer-order");
		return model;
	}
	@RequestMapping("/customer-orders")
	public ModelAndView customerorders() {
		ModelAndView model = new ModelAndView("customer-order");
		return model;
	}
	@RequestMapping("/customer-wishlist")
	public ModelAndView customerwishlist() {
		ModelAndView model = new ModelAndView("customer-wishlist");
		return model;
	}
	@RequestMapping("/detail")
	public ModelAndView detail() {
		ModelAndView model = new ModelAndView("detail");
		return model;
	}
	@RequestMapping("/faq")
	public ModelAndView faq() {
		ModelAndView model = new ModelAndView("faq");
		return model;
	}
	@RequestMapping("/post")
	public ModelAndView post() {
		ModelAndView model = new ModelAndView("post");
		return model;
	}
	@RequestMapping("/text")
	public ModelAndView text() {
		ModelAndView model = new ModelAndView("text");
		return model;
	}
	
	}
