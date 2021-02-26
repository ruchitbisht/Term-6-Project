package com.hype.stockz.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String indexPage(Model model) {
		List<String> names=new ArrayList<String>(Arrays.asList("NIKE","PUMA","ADIDAS","REEBOK"));
		
		model.addAttribute("message", names);
		return "index";
	}
}
