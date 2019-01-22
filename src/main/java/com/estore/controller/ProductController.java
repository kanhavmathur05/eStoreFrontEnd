package com.estore.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.estore.model.Product;
import com.estore.service.ProductService;

@Controller
public class ProductController {
	
	Path path;
	
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
	public String deleteProduct(Model model,@PathVariable("productID") int productID,HttpServletRequest request)
	{
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		path=Paths.get(rootDirectory+"/WEB-INF/resources/images/"+productID+".png");
		
		 if(Files.exists(path)){
	            try {
	                Files.delete(path);
	            } catch (Exception ex){
	                ex.printStackTrace();
	            }
	        }
		
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
	public String addProduct(@ModelAttribute("product") Product product,Model model,HttpServletRequest request) 
	{
		
		productService.addProduct(product);
		
		MultipartFile productImage=product.getProductImage();
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		path=Paths.get(rootDirectory+"/WEB-INF/resources/images/"+product.getProductID()+".png");
		System.out.println("Path = "+path);
		if(productImage!=null && !productImage.isEmpty()) {
			try 
			{
				productImage.transferTo(new File(path.toString()));
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
			}
				
		}
		
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
	public String updateProduct(@ModelAttribute("product")Product product,Model model,HttpServletRequest request)
	{
		productService.updateProduct(product);
		
		MultipartFile productImage=product.getProductImage();
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		path=Paths.get(rootDirectory+"/WEB-INF/resources/images/"+product.getProductID()+".png");
		System.out.println("Path = "+path);
		if(productImage!=null && !productImage.isEmpty()) {
			try 
			{
				productImage.transferTo(new File(path.toString()));
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
			}		
		}
		return "redirect:/allProducts";
	}
}