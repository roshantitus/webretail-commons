/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.beans.Transient;

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
import javax.validation.constraints.NotNull;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="order_line_item")
public class OrderLineItemBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -766227934910041988L;

	private OrderBean order;
	
	@NotNull
	private ProductBean product;
	
	@NotNull
	private Integer quantity;
	
	
	public OrderLineItemBean() {
		super();
		// TODO initialize object
	}
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "order_line_item_id")
	public Long getOrderLineItemId() {
		return id;
	}	
	
	public void setOrderLineItemId(Long id) {
		this.id = id;
	}
	
	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="product_id", unique=false, nullable=false, updatable=true)		
	public ProductBean getProduct() {
		return product;
	}
	public void setProduct(ProductBean product) {
		this.product = product;
	}
	
	@Column(name = "quantity")
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="order_id", unique=false, nullable=false, updatable=true)	
	public OrderBean getOrder() {
		return order;
	}
	public void setOrder(OrderBean order) {
		this.order = order;
	}	
	
	@Transient
	public Double itemTotal()
	{
		return quantity * product.getUnitPrice();
	}
}
