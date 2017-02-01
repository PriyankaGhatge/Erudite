package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.erudite.dao.CartDao;
import com.niit.erudite.dao.UserDao;
import com.niit.erudite.model.Cart;
import com.niit.erudite.model.UserCustomer;

@Controller
public class CartController {
	
	@Autowired
	private UserDao userdao;

	@Autowired
	CartDao cartdao;

	@RequestMapping(value="/**/cart/**/getCart_id")
	public String getCartId(Model model) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userid = user.getUsername();
		UserCustomer user1 = userdao.get(userid);
		model.addAttribute("cart_id", user1.getCart().getCart_id());
		return "cart";
	}
	
	@RequestMapping("/cart/**/getCart/{cart_id}")
	public @ResponseBody Cart getCartItems(@PathVariable(value = "cart_id") int cart_id) {
		Cart cart = cartdao.getCartByCartId(cart_id);
		return cart;

}
}
