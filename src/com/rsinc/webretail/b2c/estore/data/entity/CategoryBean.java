/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="category")
public class CategoryBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 585130359548242794L;
	
	@NotEmpty
	private String categoryName;
	private String categoryDescription;
	private CategoryBean parentCategory;
	private Integer sortOrder;

	public CategoryBean() {
		super();
		// TODO initialize object
	}

	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "category_id")
	public Long getCategoryId() {
		return id;
	}
	

	public void setCategoryId(Long id) {
		this.id = id;
	}	

	@Column(name = "category_name")	
	public String getCategoryName() {
		return categoryName;
	}


	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Column(name = "category_description")	
	public String getCategoryDescription() {
		return categoryDescription;
	}


	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}	
	
	@Column(name = "sort_order")	
	public Integer getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="parent_category_id", unique=false, nullable=true, updatable=true)
	public CategoryBean getParentCategory() {
		return parentCategory;
	}


	public void setParentCategory(CategoryBean parentCategory) {
		this.parentCategory = parentCategory;
	}	
	
	
}
