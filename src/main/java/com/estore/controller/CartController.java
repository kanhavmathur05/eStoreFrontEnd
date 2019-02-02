package com.estore.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.estore.model.Customer;
import com.estore.service.CustomerService;

@Controller
@RequestMapping("/customer/cart")
public class CartController {
	@Autowired
    private CustomerService customerService;

    @RequestMapping
    public String getCart(Principal P){
        Customer customer=customerService.getCustomerByUsername(P.getName());
        int cartID=customer.getCart().getCartID();

        return "redirect:/customer/cart/"+cartID;
    }

    @RequestMapping("/{cartID}")
    public String getCartRedirect(@PathVariable (value="cartID") int cartID, Model model){
        model.addAttribute("cartID",cartID);
        return "cart";
    }
}
