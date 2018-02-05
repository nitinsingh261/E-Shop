package com.spring.shopping.service;

import com.spring.shopping.model.Customer;
import com.spring.shopping.model.Shop;

public interface CustomerService {

	public Customer validateUsers(String userName, String password);
	public Shop validateShop(String email, String password);

	public Integer registerUser(Customer customer);
	
	public Integer registerShop(Shop shop);

	public boolean changePassword(String password1, Customer customer);

	public Customer getCustomerById(Long customerId);

	public Long getCustomerId(String userName);

}
