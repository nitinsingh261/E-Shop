package com.spring.shopping.service;

import java.util.List;
import java.util.Map;

import com.spring.shopping.model.Category;
import com.spring.shopping.model.Product;
import com.spring.shopping.model.SubCategory;


public interface CategoryConfigService {

	List<Product> getProductsByCategory(String categoryName);

	List<Product> getProductsBySubCategory(String subCategoryName);

	List<Category> getAllCategories();

	List<SubCategory> getAllSubCategories();

	Long getCategoryByProductId(Product product);

	Category getCategoryBySubCategoryId();

	Category getCategoryBySubCategoryName();

	SubCategory getSubCategoryByCategoryId();

	SubCategory getSubCategoryByCategoryName();

	Long getSubCategoryByProductId(Product product);

	List<SubCategory> getAllSubCategoriesByCategoryId(Long long1);

	Map<Category, List<SubCategory>> getCategoriesMap();
	public Integer insertCategory(Category ca);
	public Integer deleteCategory(Category ca);
	public Integer editCategory(Category ca);
	

}
