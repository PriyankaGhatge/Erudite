package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.erudite.dao.CartDao;
import com.niit.erudite.dao.CustomerOrderDao;
import com.niit.erudite.model.Cart;
import com.niit.erudite.model.CustomerOrder;
import com.niit.erudite.model.UserCustomer;

@Controller
public class CustomerOrderController {

	@Autowired
	CartDao cartdao;
	
	@Autowired
	CustomerOrderDao orderdao;
	
	@RequestMapping("/order/{cart_id}")
    public String createOrder(@PathVariable("cart_id") int cart_id){
        CustomerOrder order = new CustomerOrder();
        Cart cart = cartdao.getCartByCartId(cart_id);
        //UPDATE CARTID FOR CUSTOMERORDER - SET CARTID
        order.setCart(cart);
	
        UserCustomer customer = cart.getUsercustomer();
        //SET CUSTOMERID
       order.setUser(customer);
        //SET BILLINGADDRESSID
       order.setBillingAddress(customer.getBillingAddress());
        //SET SHIPPINGADDRESSID
       order.setShippingAddress(customer.getShippingAddress());

        orderdao.addCustomerOrder(order);
        return "redirect:/checkout?cart_id=" + cart_id;

	}
	
}
