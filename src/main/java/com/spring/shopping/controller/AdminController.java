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
public class AdminController {
	
	private String adminPage = "admin";
	private String adminTemplatePage = "template/admina";

	public String getAdminPage() {
		return adminPage;
	}

	public void setAdminPage(String adminPage) {
		this.adminPage = adminPage;
	}


	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String getAdminPage(Model model, HttpServletRequest request) {
		model.addAttribute("page",adminTemplatePage);
		return getAdminPage();
	}

	
}
