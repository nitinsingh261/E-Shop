package com.spring.shopping.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.shopping.controller.constants.ControllerConstants;
import com.spring.shopping.model.Category;
import com.spring.shopping.model.Customer;
import com.spring.shopping.model.Product;
import com.spring.shopping.model.ReviewForm;
import com.spring.shopping.service.CartData;
import com.spring.shopping.service.CustomerService;
import com.spring.shopping.service.ProductConfigService;
import com.spring.shopping.service.ReviewService;
import com.spring.shopping.util.SessionUtils;

@Controller
public class ProductController {

//	@Autowired
//	private CartService cartService;
	@Autowired
	private ProductConfigService productConfigurationService;
//	@Autowired
//	private CategoryConfigService categoryConfigurationService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private CustomerService customerService;
	
	private String saveProductTemplatePage = "template/saveProduct1";
	
	private String saveProduct  = "saveProduct";
	private String productPage = "pro";

	@RequestMapping(value = "/saveProduct", method = RequestMethod.GET)
	public String getAdminPage(Model model, HttpServletRequest request) {
		model.addAttribute("page", saveProductTemplatePage);
		return getSaveProduct();
	}
	
	
	@RequestMapping(value = "/pro", method = RequestMethod.GET)
	public String getProductPage(Model model, HttpServletRequest request) {
		List<Product> featProdList = new ArrayList<Product>();
		if (featProdList.isEmpty()) {
			model.addAttribute("featProd",
					productConfigurationService.getFeaturedProducts());
		}
		return getProductPage();
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/product", method = RequestMethod.GET, params = { "productId" })
	public String handleRequest(Model model,
			@RequestParam(value = "productId") Long productId,
			HttpServletRequest request) throws ParseException {
		Product product = productConfigurationService.getProductById(productId);
		model.addAttribute("product", product);

		CartData cartData = SessionUtils.getSessionVariables(request,ControllerConstants.CART);	
		if(cartData != null)
			model.addAttribute(ControllerConstants.NUMBER_OF_ITEMS, cartData.getNumberOfItems());

		Customer customer = SessionUtils.getSessionVariables(request,
				ControllerConstants.CUSTOMER);
		// Retrieve Reviews of a particular product
		Map<Customer, ReviewForm> reviewMap = new HashMap<Customer, ReviewForm>();
		if (customer != null) {
			List<ReviewForm> reviewsList = reviewService
					.getProductReviews(productId);
			for (ReviewForm reviewForm : reviewsList) {
				Long customerId = reviewForm.getCustomerId();
				reviewMap.put(customerService.getCustomerById(customerId),
						reviewForm);
			}
			model.addAttribute("reviewsList", reviewMap);
		}
		return "product";
	}


	public String getSaveProduct() {
		return saveProduct;
	}


	public void setSaveProduct(String saveProduct) {
		this.saveProduct = saveProduct;
	}










	public String getProductPage() {
		return productPage;
	}










	public void setProductPage(String productPage) {
		this.productPage = productPage;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
