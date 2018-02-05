package com.spring.shopping.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import com.spring.shopping.model.Shop;
import com.spring.shopping.model.SubCategory;
import com.spring.shopping.service.CategoryConfigService;
import com.spring.shopping.service.CustomerService;
import com.spring.shopping.service.ProductConfigService;


@Controller
public class CatalogController {

	@Autowired
	private CategoryConfigService categoryConfigurationService;
	@Autowired
	private ProductConfigService productConfigurationService;
	@Autowired
	private ServletContext context;
	
	@Autowired
	private CustomerService customerService;

	private String accountsTemplatePage = "template/accountInformation";
	private String shopTemplatePage = "template/shopinfo";
	private String shopregisterTemplatePage = "template/shopregistrationinfo";
	private String homePage = "home";
	private String logoTemplatePage = "template/logoinformation";
	
	private String shopRegister = "shopregistration";
	private String categoryPage = "category";
	private String shopPage = "shop";
	private String accountsPage = "account";
	private String logoPage = "logo";

	public String getLogoPage() {
		return logoPage;
	}

	public void setLogoPage(String logoPage) {
		this.logoPage = logoPage;
	}

	public String getShopRegister() {
		return shopRegister;
	}

	public void setShopRegister(String shopRegister) {
		this.shopRegister = shopRegister;
	}
	public void setCategoryPage(String categoryPage) {
		this.categoryPage = categoryPage;
	}
	


	public String getShopPage() {
		return shopPage;
	}

	public void setShopPage(String shopPage) {
		this.shopPage = shopPage;
	}
	
	public String getAccountPage() {
		return accountsPage;
	}

	public String getCategoryPage() {
		return categoryPage;
	}

	public String getHomePage() {
		return homePage;
	}


	private static final Logger logger = LoggerFactory
			.getLogger(CatalogController.class);

	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String returnHomePage(Model model, HttpServletRequest request) {
		Map<Category, List<SubCategory>> categoryMap = new HashMap<Category, List<SubCategory>>();
		logger.info("Processing information for home page");
		if (categoryMap.isEmpty()) {
			categoryMap = categoryConfigurationService.getCategoriesMap();
		}
		if (context.getAttribute("categoryMap") == null) {
			context.setAttribute("categoryMap", categoryMap);
		}
		List<Product> featProdList = new ArrayList<Product>();
		if (featProdList.isEmpty()) {
			model.addAttribute("featProd",
					productConfigurationService.getFeaturedProducts());
		}
		return getHomePage();
	}

	

	@RequestMapping(value = "/subcateogry", method = RequestMethod.GET)
	public String fetchProductsBySubCategory(Model model,
			@RequestParam("subcategoryName") String subCategoryName,
			HttpServletRequest request) {
		List<Product> subCategoryProducts = categoryConfigurationService
				.getProductsBySubCategory(subCategoryName);
		model.addAttribute("subCatProds", subCategoryProducts);
		return getCategoryPage();
	}
	
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public String getAccountsPage(Model model, HttpServletRequest request) {
		model.addAttribute("page", accountsTemplatePage);
		return getAccountPage();
	}
	
	
	
	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public String getShopPage(Model model, HttpServletRequest request) {
		model.addAttribute("page", shopTemplatePage);
		return getShopPage();
	}
	

	@RequestMapping(value = "/shopregistration", method = RequestMethod.GET)
	public String getShopRegister(Model model, HttpServletRequest request) {
		model.addAttribute("page", shopregisterTemplatePage);
		return getShopRegister();
	}
	
	
	@RequestMapping(value = "/logo", method = RequestMethod.GET)
	public String getLogoPage(Model model, HttpServletRequest request) {
		model.addAttribute("page", logoTemplatePage);
		return getLogoPage();
	}
	
	@RequestMapping(value = "/sho", method = RequestMethod.POST)
	public String registerShop(
			@RequestParam(value = "shopName", required = true) String shopName,
			@RequestParam(value = "firstName", required = true) String firstName,
			@RequestParam(value = "lastName", required = true) String lastName,
			@RequestParam(value = "password", required = true) String password,
			@RequestParam(value = "address", required = true) String address,
			@RequestParam(value = "pincode", required = true) String pincode,
			@RequestParam(value = "city", required = true) String city,
			@RequestParam(value = "state", required = true) String state,
			@RequestParam(value = "emailAddress", required = true) String emailAddress,
			@RequestParam(value = "phoneNumber", required = true) String phoneNumber,
			@ModelAttribute("shopForm") Shop shop, Model model,
			RedirectAttributes redir, HttpServletRequest request) {
		
			 int result = customerService.registerShop(shop);
			
			 redir.addFlashAttribute("result", result);
		
		      redir.addFlashAttribute("registerFlag", true);
		     return "redirect:logo";

	}

	
	
	
	


}
