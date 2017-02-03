package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.erudite.dao.ProductDao;
import com.niit.erudite.model.Product;


@Controller
public class ProductController {
	
	public static Logger log = LoggerFactory.getLogger(ProductController.class);

	
	@Autowired
	ProductDao productdao;
	
	@Autowired
	Product product;
	
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
							+ reg.getProductname() + ".jpg");
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
	public String ViewProducts(Model model) {
		model.addAttribute("productList", this.productdao.list());
		return "/listproduct";
	}
	
	
	@RequestMapping(value = "/removeproduct/{productid}")
	public String DeleteProducts(@PathVariable("productid") int id) {
		this.productdao.delete(id);
		return "redirect:/listproduct";

	}
	
	@RequestMapping("/editproduct/{productid}")
	public String editProducts(@PathVariable("productid") int id, Model model) {
		model.addAttribute("Product", this.productdao.get(id));
		model.addAttribute("productList", this.productdao.list());
		model.addAttribute("Catname", productdao.listcategory_name());
		model.addAttribute("Suppname", productdao.listsupp_name());
		return "editproduct";
	}
	
	@RequestMapping(value = "/listproductsjson")
	public @ResponseBody List<Product> listProdInJSON() {
		return productdao.list();
	}
	
	@RequestMapping("/infoproduct/{productid}")
	public ModelAndView getRecord(@PathVariable("productid") int id, Model model) {
		Product productObject = productdao.get(id);
		return new ModelAndView("singleproduct", "productObject", productObject);
	}

}
