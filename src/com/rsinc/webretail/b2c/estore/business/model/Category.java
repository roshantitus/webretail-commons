/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.model;

import javax.validation.constraints.Size;


/**
 * @author Roshan Titus
 *
 */
public class Category {
	
	private Long categoryId;
	
	@Size(min=2, max=30)
	private String categoryName;
	
	@Size(min=2, max=300)	
	private String categoryDescription;
	
	
	
	public Category() {
		super();
		// TODO initialize object
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}


	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryDescription() {
		return categoryDescription;
	}


	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}		

}
