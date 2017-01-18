
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

import com.niit.erudite.dao.SupplierDao;

import com.niit.erudite.model.Supplier;

	@Controller

	public class SupplierController {
		
		public static Logger log = LoggerFactory.getLogger(SupplierController.class);
		
	@Autowired
	SupplierDao supplierdao;
	
	@Autowired
	Supplier supplier;
		
		@RequestMapping(value= "/supplier", method= RequestMethod.POST)
		public ModelAndView supplier() {
			System.out.println("inside controller");
			Supplier s = new Supplier();
			ModelAndView model = new ModelAndView("supplier");
			model.addObject("Supplierdata",s);
			return model;	
			}
		
		@RequestMapping(value = "/addSupplier", method = RequestMethod.POST)
		public String addSupplier(@Valid @ModelAttribute("Supplierdata") Supplier reg,BindingResult result)
		{
			supplierdao.save(reg);
			return "supplier";
			
		}
		
	
	}