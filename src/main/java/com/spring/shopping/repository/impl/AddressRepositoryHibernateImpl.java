package com.spring.shopping.repository.impl;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.spring.shopping.model.AddressForm;
import com.spring.shopping.repository.AddressRepository;

public class AddressRepositoryHibernateImpl implements AddressRepository {
HibernateTemplate templtete;
	public HibernateTemplate getTempltete() {
	return templtete;
}

public void setTempltete(HibernateTemplate templtete) {
	this.templtete = templtete;
}

	@Override
	public void saveAddress(AddressForm address) {
		templtete.save(address);
	}

	@Override
	public AddressForm readAddressById(Long addressId) {
		
		return null;
	}

}
