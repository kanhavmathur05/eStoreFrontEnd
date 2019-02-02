package com.estore.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		Product product=productService.getProductByID(productID);
		model.addAttribute("product",product);
		return "viewProduct";
	}
}