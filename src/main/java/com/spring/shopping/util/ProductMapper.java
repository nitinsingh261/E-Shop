package com.spring.shopping.util;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.shopping.model.Product;

@SuppressWarnings("serial")
public class ProductMapper implements RowMapper<Product>,Serializable{

	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product product = new Product();
		product.setProductId(rs.getLong("Product_Id"));
		product.setName(rs.getString("Name"));
		product.setFeatured(rs.getInt("Featured"));
		product.setPrice(rs.getBigDecimal("Price"));
		product.setAvailable(rs.getInt("Available"));
		product.setCategory_Id(rs.getLong("Category_Id"));
		product.setDescription(rs.getString("Description"));
		product.setSubCategoryId(rs.getLong("SubCategory_Id"));
		product.setManufacturer(rs.getString("Manufacturer"));
		
		return product;
	}

}