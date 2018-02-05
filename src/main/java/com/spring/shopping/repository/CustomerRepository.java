package com.spring.shopping.repository;

import com.spring.shopping.model.Customer;
import com.spring.shopping.model.Shop;

public interface CustomerRepository {

	public Customer validateUsers(String userName, String password);
	public Shop validateShop(String email, String password);

	public Integer registerUser(Customer customer);
	
	
	public Integer registerShop(Shop shop);
	
	public boolean changePassword(String password,Customer customer);

	public Customer getCustomerById(Long customerId);

	Long getCustomerById(String userName);
}
