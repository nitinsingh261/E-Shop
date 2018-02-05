package com.spring.shopping.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.shopping.model.Category;
import com.spring.shopping.model.Product;
import com.spring.shopping.model.SubCategory;
import com.spring.shopping.repository.CategoryConfigRepository;

@Service
public class CategoryConfigServiceImpl implements CategoryConfigService {
	@Autowired
	private CategoryConfigRepository categoryConfigRepository;

	
	@Override
	public List<Category> getAllCategories() {
		List<Category> categoryList = categoryConfigRepository
				.readAllCategories();
		return categoryList;
	}

	
	@Override
	public List<SubCategory> getAllSubCategories() {
		List<SubCategory> categoryList = categoryConfigRepository.readAllSubCategories();
		return categoryList;
	}

	
	@Override
	public Long getCategoryByProductId(Product product) {
		Long categoryId = categoryConfigRepository
				.readCategoryByProductId(product);
		return categoryId;
	}

	
	@Override
	public Category getCategoryBySubCategoryId() {
		// Code to Retrieve Category By SubCategory ID
		// in the Application
		return null;
	}

	
	@Override
	public Category getCategoryBySubCategoryName() {
		// TODO
		// Code to Retrieve Category By SubCategory Name
		// in the Application
		return null;
	}


	@Override
	public SubCategory getSubCategoryByCategoryId() {
		// Code to Retrieve SubCategory By Category ID
		// in the Application
		return null;
	}

	
	@Override
	public SubCategory getSubCategoryByCategoryName() {
		// Code to Retrieve SubCategory By Category Name
		// in the Application
		return null;
	}

	
	@Override
	public Long getSubCategoryByProductId(Product product) {
		Long subCategoryId = categoryConfigRepository
				.readSubCategoryByProductId(product);
		return subCategoryId;
	}

	
	@Override
	public List<SubCategory> getAllSubCategoriesByCategoryId(Long categoryId) {
		List<SubCategory> subCatList = categoryConfigRepository
				.readAllSubCategoriesByCategoryId(categoryId);
		return subCatList;
	}

	public Map<Category, List<SubCategory>> getCategoriesMap() {

		List<Category> categoriesList = getAllCategories();
		Map<Category, List<SubCategory>> categoryMap = new HashMap<Category, List<SubCategory>>();
		for (Category category : categoriesList) {
			List<SubCategory> subCategoryList = getAllSubCategoriesByCategoryId(category
					.getCategory_Id());
			categoryMap.put(category, subCategoryList);
		}

		return categoryMap;
	}


	@Override
	public List<Product> getProductsByCategory(String categoryName) {

		List<Product> productsList = categoryConfigRepository
				.getProductsByCategory(categoryName);
		return productsList;
	}

	@Override
	public List<Product> getProductsBySubCategory(String subCategoryName) {
		List<Product> prodListBySubCat = categoryConfigRepository.getProductsBySubCategory(subCategoryName);
		return prodListBySubCat;
	}


	@Override
	public Integer insertCategory(Category ca) {
		// TODO Auto-generated method stub
		
		return categoryConfigRepository.insertCategory(ca);
	}


	@Override
	public Integer deleteCategory(Category ca) {
		// TODO Auto-generated method stub
		return categoryConfigRepository.deleteCategory(ca);
	}


	@Override
	public Integer editCategory(Category ca) {
		// TODO Auto-generated method stub
		return categoryConfigRepository.editCategory(ca);
	}

}
