package com.estore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.estore.model.Product;
import com.estore.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/allProducts")
	public String viewAllProducts(Model model)
	{
		List<Product> allProducts=productService.getAllProducts();
		model.addAttribute("allProducts", allProducts);
		return "viewAllProducts";
	}
	@RequestMapping(value="/viewProduct/{productID}",method=RequestMethod.GET)
	public String viewProduct(Model model,@PathVariable("productID") int productID)
	{
		Product product=productService.getProductById(productID);
		model.addAttribute("product",product);
		return "viewProduct";
	}
	
	@RequestMapping(value="/deleteProduct/{productID}",method=RequestMethod.GET)
	public String deleteProduct(Model model,@PathVariable("productID") int productID)
	{
		Product product=productService.getProductById(productID);
		productService.deleteProduct(product);
		return "redirect:/allProducts";
	}
	@RequestMapping(value="/addProduct")
	public String addProduct(Model model) 
	{
		Product product=new Product();
		model.addAttribute("product", product);
		return "addProduct";
	}
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product,Model model) 
	{
		productService.addProduct(product);
		return "redirect:/allProducts";
	}
	@RequestMapping(value="/updateProduct/{productID}")
	public String updateProduct(Model model,@PathVariable("productID") int productID) 
	{
		Product product;
		product=productService.getProductById(productID);
		model.addAttribute("product",product);
		return "updateProduct";
	}
	@RequestMapping(value="/updateProduct/{productID}",method=RequestMethod.POST)
	public String updateProduct(@ModelAttribute("product")Product product,Model model)
	{
		productService.updateProduct(product);
		return "redirect:/allProducts";
	}
}