
package com.niit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		@RequestMapping("/loginerror")
		public String LoginError(@RequestParam(value = "error", required = false) String error, Model model) {
			model.addAttribute("error", "Wrong Credentials");
			return "login";
		}
		@RequestMapping(value = "/Logout", method = RequestMethod.GET)
		public String logoutPage(HttpServletRequest request, HttpServletResponse response,
				@RequestParam(value = "logout", required = false) String logout, Model model) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (auth != null) {
				new SecurityContextLogoutHandler().logout(request, response, auth);
			}
			model.addAttribute("logout", "Have a great time! Thank you for visiting us.");
			return "login";// You can redirect wherever you want,
							// but generally it's a good practice to
							// show login screen again.
	
	}
	}