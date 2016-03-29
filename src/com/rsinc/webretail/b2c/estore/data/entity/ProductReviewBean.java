/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="product_review")
public class ProductReviewBean extends ReviewBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5330290587820598882L;
	
	private ProductBean product;

	public ProductReviewBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "product_review_id")
	public Long getProductReviewId() {
		return id;
	}	
	
	public void setProductReviewId(Long id) {
		this.id = id;
	}	

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="product_id", unique=false, nullable=false, updatable=true)			
	public ProductBean getProduct() {
		return product;
	}

	public void setProduct(ProductBean product) {
		this.product = product;
	}

}
