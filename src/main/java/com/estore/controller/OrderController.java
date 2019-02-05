package com.estore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.estore.model.Cart;
import com.estore.model.Customer;
import com.estore.model.CustomerOrder;
import com.estore.service.CartService;
import com.estore.service.CustomerOrderService;

@Controller
public class OrderController {
	@Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @RequestMapping("/order/{cartID}")
    public String createOrder(@PathVariable("cartID") int cartID){
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartService.getCartByID(cartID);
        customerOrder.setCart(cart);

        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customer.setShippingAddress(customer.getShippingAddress());

        customerOrderService.addCustomerOrder(customerOrder);

        return "redirect:/checkout?cartID=" + cartID;

    }

}
