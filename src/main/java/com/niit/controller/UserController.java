
package com.niit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import javax.validation.Valid;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.validation.BindingResult;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.servlet.ModelAndView;

	import com.niit.erudite.dao.UserDao;
	import com.niit.erudite.model.User;
	@Controller

	public class UserController {
		
		public static Logger log = LoggerFactory.getLogger(UserController.class);
		
	@Autowired
	UserDao userDao;
	
	@Autowired
	User user;
		
		@RequestMapping(value= "/Register", method= RequestMethod.POST)
		public ModelAndView register() {
			System.out.println("inside controller");
			User u = new User();
			ModelAndView model = new ModelAndView("register");
			model.addObject("Userdata",u);
			return model;	
			}
		
		@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
		public String adduser(@Valid @ModelAttribute("Userdata")User reg,BindingResult result)
		{
			userDao.save(reg);
			return "register";
			
		}
		
	
	}