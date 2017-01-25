
package com.niit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import javax.validation.Valid;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.validation.BindingResult;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
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
		
//		@RequestMapping(value= "/category1", method= RequestMethod.POST)
//		public ModelAndView category_one() {
//			System.out.println("inside controller");
//			Category c = new Category();
//			ModelAndView model = new ModelAndView("category1");
//			model.addObject("Categorydata",c);
//			return model;	
//			}
		
		@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
		public String addcategory(@Valid @ModelAttribute("Categorydata") Category reg,BindingResult result)
		{
			categorydao.save(reg);
			return "category1";
			
		}

		@RequestMapping(value = "/listcategory")
		public ModelAndView categoryList(){
			ModelAndView mv = new ModelAndView("/listcategory");
			System.out.println("In Category controller");
			mv.addObject("category", category);
			mv.addObject("categoryList", this.categorydao.list());
			return mv;
		}
		
	
		@RequestMapping(value = "/removecategory/{category_id}")
		public String DeleteCategory(@PathVariable("category_id") int id) {
			this.categorydao.delete(id);
			return "listcategory";

		}
		
		@RequestMapping("/editcategory/{category_id}")
		public String editCategory(@PathVariable("category_id") int id, Model model) {
			model.addAttribute("Category", this.categorydao.get(id));
			model.addAttribute("categoryList", this.categorydao.list());
			return "editcategory";
		}
		
	
	}