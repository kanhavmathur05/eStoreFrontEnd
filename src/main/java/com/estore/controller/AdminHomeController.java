package com.estore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.estore.model.BillingAddress;
import com.estore.model.Customer;
import com.estore.model.ShippingAddress;
import com.estore.service.CustomerService;

@Controller
@RequestMapping("/admin")
public class AdminHomeController 
{

	@Autowired
    private CustomerService customerService;

	
	@RequestMapping(value="/customers")
	public String displayAllCustomers(Model model)
	{	
		List<Customer> customerList=customerService.getAllCustomers();
		model.addAttribute("customerList",customerList);
		return "viewAllCustomers";
	}
	
	@RequestMapping(value="/updateCustomer/{customerID}")
	public String updateCustomer(Model model,@PathVariable("customerID") int customerID)
	{
		Customer customer;
		customer=customerService.getCustomerByID(customerID);
		BillingAddress billingAddress=customer.getBillingAddress();
		ShippingAddress shippingAddress=customer.getShippingAddress();
		
		model.addAttribute("customer",customer);
		return "updateCustomer";
	}
	
	@RequestMapping(value="/updateCustomer/{customerID}",method=RequestMethod.POST)
	public String updateCustomer(@ModelAttribute("customer")Customer customer,Model model,HttpServletRequest request)
	{
		
	
		//	customer.setBillingAddress(billingAddress);
	//	customer.setShippingAddress(shippingAddress);
		customerService.updateCustomer(customer);
		return "redirect:/admin/customers";
	}
}
