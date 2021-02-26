package com.hype.stockz.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.client.support.HttpAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hype.stockz.dao.ProductDAO;
import com.hype.stockz.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDAO dao;
	
	@RequestMapping("/display-products")
	public String productPage(Model model) {
		List<Product> productList=dao.findAll();
		model.addAttribute("list", productList);
		
		return "products";
	}
	
	@GetMapping("/product-page")
	public String addProductForm(Model model) {
		model.addAttribute("product", new Product());
		return "addProduct";
	}
	
	@PostMapping("/add-product")
	public String addProductPage(@ModelAttribute("product") Product product, HttpServletRequest request) {
		dao.addProduct(product);
		
		MultipartFile image=product.getImage();
		String rootDirectory= request.getSession().getServletContext().getRealPath("/");
		Path path = Paths.get(rootDirectory+"/resources/images/"+product.getId()+".png");
		System.out.println("Image Path : " + path);
		if(image != null && !image.isEmpty()) {
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
		return "redirect:/display-products";
	}
	@GetMapping("/delete/{id}")
	public String deleteProduct(@PathVariable("id") int productId) {
		
		Product product=dao.getProductById(productId);
		dao.deleteProduct(product);
		return "redirect:/display-products";
	}
	@GetMapping("/update/{id}")
	public String updateProductForm(@PathVariable("id") int productId, Model model) {
	Product	prUpd =dao.getProductById(productId);
	model.addAttribute("Product", prUpd);	
		return "updateProduct";
	}
	@PostMapping("/update")
	public String updateProduct(@ModelAttribute("Product") Product product) 
	{
		dao.updateProduct(product);
		return "redirect:/display-products";
	}
	@GetMapping("/view-product")
	public String viewProductPage(@RequestParam("id") int id, Model model) {
		Product product = dao.getProductById(id);
		model.addAttribute("product", product);
		return "displayProduct";
	}
 }
