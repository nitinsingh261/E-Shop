package com.spring.shopping.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.shopping.model.Category;
import com.spring.shopping.model.Product;
import com.spring.shopping.model.SubCategory;
import com.spring.shopping.service.CategoryConfigService;

@Controller
public class SubCategoryController {
	@Autowired
	private CategoryConfigService categoryConfigurationService;
	private String insertSubCategory;
	private String subcategoryPage = "subcategory";
	private String subcategoryPage1 = "su";


	@RequestMapping(value = "/subcategory", method = RequestMethod.GET)
	public String getSubcategoryPage(
			Model model, HttpServletRequest request) {
				List<Category> CategoryP = categoryConfigurationService
						.getAllCategories();
				List<SubCategory> subCategoryP = categoryConfigurationService
						.getAllSubCategories();
				model.addAttribute("fe",CategoryP);
				model.addAttribute("featProd",subCategoryP);
		return  getSubcategoryPage();
	}
	@RequestMapping(value = "/subcateogryName", method = RequestMethod.GET)
	public String fetchProducts(Model model,
			@RequestParam("subcategoryName") String subCategoryName,
			HttpServletRequest request) {
		List<Product> subCategoryProducts = categoryConfigurationService
				.getProductsBySubCategory(subCategoryName);
		model.addAttribute("subC", subCategoryProducts);
		return getSubcategoryPage1();
	}


	@RequestMapping(value = "/subcategory", method = RequestMethod.POST)
	public String getSubcategoryPage1(
			@RequestParam(value = "subCategoryName", required = true) String subCategoryName,
			@ModelAttribute("categoryForm") Category ca, Model model,
			RedirectAttributes redir, HttpServletRequest request) {
		List<Product> pr=categoryConfigurationService.getProductsBySubCategory(subCategoryName);
	
		model.addAttribute("fe",pr);
		
		return  getSubcategoryPage1();
	}
	
	
	@RequestMapping(value = "/addSubCategory", method = RequestMethod.POST)
	public String insertCategory(
			@RequestParam(value = "categoryName", required = true) String categoryName,
			
			@ModelAttribute("categoryForm") Category ca, Model model,
			RedirectAttributes redir, HttpServletRequest request) {
		
		     int result = categoryConfigurationService.insertCategory(ca);
			
			 redir.addFlashAttribute("result", result);
		
		     return "redirect:category";

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String getSubcategoryPage() {
		return subcategoryPage;
	}

	public void setSubcategoryPage(String subcategoryPage) {
		this.subcategoryPage = subcategoryPage;
	}
	
	
	
	
	
	
	public String getInsertSubCategory() {
		return insertSubCategory;
	}
	public void setInsertSubCategory(String insertSubCategory) {
		this.insertSubCategory = insertSubCategory;
	}

	public String getSubcategoryPage1() {
		return subcategoryPage1;
	}

	public void setSubcategoryPage1(String subcategoryPage1) {
		this.subcategoryPage1 = subcategoryPage1;
	}

}
