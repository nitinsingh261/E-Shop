package com.spring.shopping.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.shopping.model.Category;
import com.spring.shopping.model.Customer;
import com.spring.shopping.model.Product;
import com.spring.shopping.model.Shop;
import com.spring.shopping.service.CategoryConfigService;
import com.spring.shopping.service.CustomerService;
import com.spring.shopping.service.MailSenderService;
import com.spring.shopping.util.SessionUtils;
@Controller
public class CategoryController {
	
	
	@Autowired
	private CategoryConfigService categoryConfigurationService;
	private String categoryPage = "category";
	private String insertCategory;
    
	public String getCategoryPage() {
		return categoryPage;
	}

	public void setCategoryPage(String categoryPage) {
		this.categoryPage = categoryPage;
	}
	
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String getCategoryPage(Model model, HttpServletRequest request) {
		List<Category> CategoryP = categoryConfigurationService
				.getAllCategories();
		model.addAttribute("featProd",CategoryP);
		return getCategoryPage();
	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public String insertCategory(
			@RequestParam(value = "categoryName", required = true) String categoryName,
			
			@ModelAttribute("categoryForm") Category ca, Model model,
			RedirectAttributes redir, HttpServletRequest request) {
		
		     int result = categoryConfigurationService.insertCategory(ca);
			
			 redir.addFlashAttribute("result", result);
		
		     return "redirect:category";

	}
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteCategory(
			@RequestParam(value = "categoryName", required = true) String categoryName,
			
			@ModelAttribute("categoryForm") Category ca, Model model,
			RedirectAttributes redir, HttpServletRequest request) {
		
		     int result = categoryConfigurationService.deleteCategory(ca);
			
			 redir.addFlashAttribute("result", result);
		
		     return "redirect:category";

	}

	public String getInsertCategory() {
		return insertCategory;
	}

	public void setInsertCategory(String insertCategory) {
		this.insertCategory = insertCategory;
	}

}

