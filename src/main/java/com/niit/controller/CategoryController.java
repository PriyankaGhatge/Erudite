
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

import com.niit.erudite.dao.CategoryDao;

import com.niit.erudite.model.Category;

	@Controller

	public class CategoryController {
		
		public static Logger log = LoggerFactory.getLogger(CategoryController.class);
		
	@Autowired
	CategoryDao categorydao;
	
	@Autowired
	Category category;
		
		@RequestMapping(value= "/category1", method= RequestMethod.POST)
		public ModelAndView category_one() {
			System.out.println("inside controller");
			Category c = new Category();
			ModelAndView model = new ModelAndView("category1");
			model.addObject("Categorydata",c);
			return model;	
			}
		
		@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
		public String addcategory(@Valid @ModelAttribute("Categorydata") Category reg,BindingResult result)
		{
			categorydao.save(reg);
			return "category1";
			
		}
		
	
	}