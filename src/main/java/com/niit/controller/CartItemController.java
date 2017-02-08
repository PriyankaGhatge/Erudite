package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.niit.erudite.dao.CartDao;
import com.niit.erudite.dao.CartItemDao;
import com.niit.erudite.dao.ProductDao;
import com.niit.erudite.dao.UserDao;
import com.niit.erudite.model.Cart;
import com.niit.erudite.model.CartItem;
import com.niit.erudite.model.Product;
import com.niit.erudite.model.UserCustomer;

@Controller
public class CartItemController {
	
	@Autowired
	private CartItemDao cartitemdao;

	@Autowired
	private UserDao userdao;

	@Autowired
	private ProductDao productdao;

	@Autowired
	private CartDao cartdao;

	
	@RequestMapping("/cart/add/{productid}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value = "productid") int productid) {
		
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		String username = user.getUsername();
		
		UserCustomer user1 = userdao.get(username);
		
		Cart cart = user1.getCart();

		List<CartItem> cartitems = cart.getCartitems();
		System.out.println(cartitems.isEmpty());
		Product product = productdao.get(productid);
		
		for (int i = 0; i < cartitems.size(); i++) {
			CartItem cartItem = cartitems.get(i);
			
			if (product.getProductid() == cartItem.getProduct().getProductid()) {
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalprice(cartItem.getQuantity() * cartItem.getProduct().getProductprice());
				cartitemdao.addCartItem(cartItem);
				return;
			}
		}
		CartItem cartItem = new CartItem();
		cartItem.setQuantity(1);
		cartItem.setProduct(product);
		cartItem.setTotalprice(product.getProductprice() * 1);
		cartItem.setCart(cart);
		cartitemdao.addCartItem(cartItem);
		System.out.println(cartItem.getTotalprice());
	}

	@RequestMapping("/cart/removecartitem/{cartitem_id}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable(value = "cartitem_id") int cartitem_id) {
		System.out.println("removing item");
		cartitemdao.removeCartItem(cartitem_id);
	}
	
	@RequestMapping("/cart/removeAllItems/{cart_id}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable(value = "cart_id") int cart_id) {
		Cart cart = cartdao.getCartByCartId(cart_id);
		cartitemdao.removeAllCartItems(cart);
	}
	
	
	
	
}
