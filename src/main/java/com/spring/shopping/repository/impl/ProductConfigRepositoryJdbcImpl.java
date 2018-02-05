package com.spring.shopping.repository.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.spring.shopping.model.Category;
import com.spring.shopping.model.Product;
import com.spring.shopping.repository.ProductConfigRepository;
import com.spring.shopping.util.CategoryMapper;
import com.spring.shopping.util.ProductMapper;

@Repository
public class ProductConfigRepositoryJdbcImpl implements ProductConfigRepository {

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(
				dataSource);
	}

	@Override
	public List<Product> readFeaturedProducts() {
		int number = 1;
		String sql = "SELECT * FROM product p where p.Featured= :number";
		SqlParameterSource sqlParameterSource = new MapSqlParameterSource(
				"number", number);
		List<Product> productsList = namedParameterJdbcTemplate.query(sql,
				sqlParameterSource, new ProductMapper());
		return productsList;
	}

	@Override
	public Product readProductById(Long productId) {
		String sql = "SELECT * FROM product p where p.Product_Id= :productId";
		SqlParameterSource sqlParameterSource = new MapSqlParameterSource(
				"productId", productId);
		Product product = namedParameterJdbcTemplate.queryForObject(sql,
				sqlParameterSource, new ProductMapper());
		return product;
	}

	@Override
	public List<Product> readAllProducts() {
		String sql = "SELECT * FROM product";
		List<Product> productList = jdbcTemplate.query(sql,
				new ProductMapper());
		return productList;
	}
}
