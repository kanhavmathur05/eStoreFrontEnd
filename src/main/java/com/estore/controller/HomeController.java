package com.estore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

	@GetMapping("/")
	public String homePage(Model model)
	{
		//model.addAttribute("productName", "Kanhav");
		return "index";
	}
	@GetMapping("/aboutUs")
	public String aboutUs()
	{
		return "aboutUs";
	}
	@GetMapping("/contactUs")
	public String contactUs()
	{
		return "contactUs";
	}
	@GetMapping("/login")
	public String login()
	{
		return "login";
	}
	@GetMapping("/signUp")
	public String signUp()
	{
		return "signUp";
	}
	
}
