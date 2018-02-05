package com.spring.shopping.util;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.shopping.model.Shop;

public class ShopMapper implements RowMapper<Shop> {

	@Override
	public Shop mapRow(ResultSet rs, int rowNum) throws SQLException {
		Shop shop = new Shop();
		shop.setEmailAddress(rs.getString("emailAddress"));
		shop.setShopName(rs.getString("shopName"));
		shop.setFirstName(rs.getString("firstName"));
		shop.setLastName(rs.getString("lastName"));
		shop.setPassword(rs.getString("password"));
		shop.setAddress(rs.getString("address"));
		shop.setPincode(rs.getString("pincode"));
		shop.setPhoneNumber(rs.getString("phoneNumber"));
		return shop;
	}

}

