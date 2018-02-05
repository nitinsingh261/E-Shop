 package com.spring.shopping.controller;

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

import com.spring.shopping.model.Customer;
import com.spring.shopping.model.Shop;
import com.spring.shopping.service.CustomerService;
import com.spring.shopping.service.MailSenderService;
import com.spring.shopping.util.SessionUtils;

@Controller
public class CustomerController {

	private HttpSession session;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private MailSenderService mailSenderService;
	private StringBuffer sb = new StringBuffer();

	

	@RequestMapping(value = "/login",  method =  RequestMethod.POST)
	public String checkForUserLogin(
			@RequestParam(value = "userName", required = true) String userName,
			@RequestParam(value = "password", required = true) String password,
			Model model, HttpServletRequest request) {
		Customer customer = validateCustomer(userName, password);
		session = SessionUtils.createSession(request);
		
		SessionUtils.setSessionVariables(customer, request, "customer");
		
		if (customer != null) {
			model.addAttribute("status", "customer");
			return "redirect:cart";
		} else {
			model.addAttribute("loginStatus", "fail");
			return "redirect:login";
		}
		

	}

	private Customer validateCustomer(String userName, String password) {
		Customer customer = customerService.validateUsers(userName, password);
		return customer;
	}

	

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerUser(
			@RequestParam(value = "userName", required = true) String userName,
			@RequestParam(value = "password", required = true) String password,
			@RequestParam(value = "emailAddress", required = true) String email,
			@ModelAttribute("customerForm") Customer customer, Model model,
			RedirectAttributes redir, HttpServletRequest request) {
		if (validateCustomer(userName, password) == null) {
			int result = customerService.registerUser(customer);
			if (result > 0) {
				sb.append("Hello " + customer.getUserName() + "\n");
				sb.append("Thank you for registering at e-Duniya.Happy Shopping!!\n");
				mailSenderService.sendEmail(
						customer.getEmailAddress(), userName, sb.toString(),"Activation mail for "+userName);
			}
			redir.addFlashAttribute("result", result);
		} else {
			redir.addFlashAttribute("regStatus", "FAIL");
		}
		redir.addFlashAttribute("registerFlag", true);
		return "redirect:login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLoginPage(HttpServletRequest request, Model model) {
		Boolean registerFlag = (Boolean) model.asMap().get("registerFlag");
		Integer result = (Integer) model.asMap().get("result");
		if (registerFlag != null && registerFlag != false) {
			// String regStatus = (String) model.asMap().get("regStatus");
			if (result != null && result != 0) {
				return "redirect:successSignUp";
			} else {
				return "redirect:failureSignUp";
			}
		} else {
			return "login";
		}
	}

	@RequestMapping(value = "/logout", method = {RequestMethod.GET, RequestMethod.POST})
	public String logout(HttpServletRequest request, Model model) {
		session = SessionUtils.createSession(request);
		SessionUtils.removeSessionVariables("customer", request);
		session.invalidate();
		return "redirect:home";
	}

	@RequestMapping(value = "/successSignUp", method = {RequestMethod.GET, RequestMethod.POST})
	public String signupSuccess(Model model) {
		model.addAttribute("result", 1);
		return "login";
	}

	@RequestMapping(value = "/failureSignUp",method = {RequestMethod.GET, RequestMethod.POST})
	public String signupFailure(Model model) {
		model.addAttribute("result", 0);
		return "login";
	}
	
	@RequestMapping(value = "/sh",  method =  RequestMethod.GET)
	public String checkForShopLogin(
			@RequestParam(value = "email", required = true) String email,
			@RequestParam(value = "password", required = true) String password,
			Model model, HttpServletRequest request) {
		Shop shop = validateShop(email, password);
		session = SessionUtils.createSession(request);
		
		SessionUtils.setSessionVariables(shop, request, "shop");
		
		if (shop != null) {
			model.addAttribute("status", "shop");
			return "redirect:shop";
		} else {
			model.addAttribute("loginStatus", "fail");
			return "redirect:logo";
		}
		

	}

	private Shop validateShop(String email, String password) {
		Shop shop = customerService.validateShop(email, password);
		return shop;
	}
	
	
	
	

}
