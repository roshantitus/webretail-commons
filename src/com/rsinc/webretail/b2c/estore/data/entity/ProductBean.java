/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.List;

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
import javax.persistence.OneToMany;
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
@Table(name="product")
public class ProductBean  extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5181327528560241143L;
	
	@NotEmpty
	private String productName;
	private String productDescription;
	private Integer quantity;
	private Double unitPrice;
	private CategoryBean category;
	private Integer sortOrder;		
	private List<PoductImageBean> productImages;
	private List<ProductAttributeBean> productAttributes;
	private List<ProductReviewBean> reviews;
//	private List<ProductBean> relatedProducts;
	
	/**
	 * @return
	 */
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "product_id")	
	public Long getProductId() {
		return id;
	}

	@Column(name = "product_name")	
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column(name = "product_description")	
	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	@Column(name = "quantity")	
	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Column(name = "unit_price")	
	public Double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	/**
	 * @param productId
	 */
	public void setProductId(Long productId) {
		this.id = productId;		
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="category_id", unique=false, nullable=false, updatable=true)		
	public CategoryBean getCategory() {
		return category;
	}

	public void setCategory(CategoryBean category) {
		this.category = category;
	}

	@Column(name = "sort_order")
	public Integer getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}

	@OneToMany(mappedBy="product", fetch = FetchType.EAGER)
	public List<PoductImageBean> getProductImages() {
		return productImages;
	}

	public void setProductImages(List<PoductImageBean> productImages) {
		this.productImages = productImages;
	}

	@OneToMany(mappedBy="product", fetch = FetchType.EAGER)
	public List<ProductAttributeBean> getProductAttributes() {
		return productAttributes;
	}

	public void setProductAttributes(List<ProductAttributeBean> productAttributes) {
		this.productAttributes = productAttributes;
	}

	@OneToMany(mappedBy="product", fetch = FetchType.EAGER)
	public List<ProductReviewBean> getReviews() {
		return reviews;
	}

	public void setReviews(List<ProductReviewBean> reviews) {
		this.reviews = reviews;
	}

//	public List<ProductBean> getRelatedProducts() {
//		return relatedProducts;
//	}
//
//	public void setRelatedProducts(List<ProductBean> relatedProducts) {
//		this.relatedProducts = relatedProducts;
//	}
//	
		
}
