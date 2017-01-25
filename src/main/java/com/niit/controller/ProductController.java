package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.erudite.dao.ProductDao;
import com.niit.erudite.model.Product;


@Controller
public class ProductController {
	
	@Autowired
	ProductDao productdao;
	
	@Autowired
	Product product;
	
	/*@RequestMapping("/newproduct")
	public ModelAndView newproduct() {
		System.out.println("Product Controller");
		Product p = new Product();
		ModelAndView model = new ModelAndView("newProduct");
		model.addObject("Productdata", p);
		model.addObject("Catname", productdao.listcategory_name());
		model.addObject("Suppname", productdao.listsupp_name());
		return model;
	}*/
	
	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public String addproduct(@Valid @ModelAttribute("Productdata") Product reg, HttpServletRequest request,BindingResult result) 
	{

		/*if (result.hasErrors())
			return "productForm";
*/
		MultipartFile image = reg.getImage();
		if (image != null && !image.isEmpty()) {
			Path path = Paths
					.get("E:\\Workspace_2\\EruditeFrontEnd\\src\\main\\webapp\\resources\\img\\"
							+ reg.getProduct_name() + ".jpg");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		productdao.save(reg);
		return "redirect:/listproduct";

	}
	@RequestMapping(value = "/listproduct")
	public ModelAndView productList() {
		ModelAndView mv=new ModelAndView("listproduct");
		mv.addObject("product",product);
		mv.addObject("productList", this.productdao.list());
		return mv;
	}
	
	@RequestMapping(value = "/removeproduct/{product_id}")
	public String DeleteProducts(@PathVariable("product_id") int id) {
		this.productdao.delete(id);
		return "redirect:/listproduct";

	}
	
	@RequestMapping("/editproduct/{product_id}")
	public String editProducts(@PathVariable("product_id") int id, Model model) {
		model.addAttribute("Product", this.productdao.get(id));
		model.addAttribute("productList", this.productdao.list());
		model.addAttribute("Catname", productdao.listcategory_name());
		model.addAttribute("Suppname", productdao.listsupp_name());
		return "editproduct";
	}
//	
//	@RequestMapping("/infoprod/{product_id}")
//	public ModelAndView getRecord(@PathVariable("product_id") int id, Model model) {
//		Product productObject = productdao.get(id);
//		// System.out.println("view:"+movieObject.getMoviename());
//		return new ModelAndView("singleProduct", "productObject", productObject);
//	}

}