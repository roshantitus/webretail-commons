/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

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
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="product_image")
public class PoductImageBean extends ImageBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6979969065456679073L;
	
	private ProductBean product;
	private Integer sortOrder;		

	public PoductImageBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "product_image_id")
	public Long getPoductImageId() {
		return id;
	}	
	
	public void setPoductImageId(Long id) {
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

	@Column(name = "sort_order")
	public Integer getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}
		
}
