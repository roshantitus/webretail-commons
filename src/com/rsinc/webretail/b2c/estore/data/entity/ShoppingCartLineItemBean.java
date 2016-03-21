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
@Table(name="cart_line_item")
public class ShoppingCartLineItemBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 984909181985504238L;
	
	private ShoppingCartBean cart;
	
	@NotNull
	private ProductBean product;
	
	@NotNull
	private Integer quantity;
	
	@NotNull
	private Double price;	

	public ShoppingCartLineItemBean() {
		super();
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "cart_line_item_id")
	public Long getShoppingCartLineItemId() {
		return id;
	}	
	
	public void setShoppingCartLineItemId(Long id) {
		this.id = id;
	}	
		
	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="product_id", unique=true, nullable=false, updatable=true)	
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
	
	@Column(name = "price")
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="cart_id", unique=true, nullable=false, updatable=true)		
	public ShoppingCartBean getCart() {
		return cart;
	}

	public void setCart(ShoppingCartBean cart) {
		this.cart = cart;
	}		
	
	
}
