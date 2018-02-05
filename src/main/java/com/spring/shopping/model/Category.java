package com.spring.shopping.model;

public class Category {

	private Long category_Id;

	public Long getCategory_Id() {
		return category_Id;
	}

	public void setCategory_Id(Long category_Id) {
		this.category_Id = category_Id;
	}



	private String categoryName;
	
	



	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((category_Id == null) ? 0 : category_Id.hashCode());
		result = prime * result
				+ ((categoryName == null) ? 0 : categoryName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category other = (Category) obj;
		if (category_Id == null) {
			if (other.category_Id != null)
				return false;
		} else if (!category_Id.equals(other.category_Id))
			return false;
		if (categoryName== null) {
			if (other.categoryName != null)
				return false;
		} else if (!categoryName.equals(other.categoryName))
			return false;
		return true;
	}

}
