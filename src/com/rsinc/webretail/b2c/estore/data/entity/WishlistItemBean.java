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

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="wish_list_item")
public class WishlistItemBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8284094737093685496L;
	private WishlistBean wishlist;
	private ProductBean product;
	
	public WishlistItemBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "wish_list_item_id")
	public Long getWishlistItemId() {
		return id;
	}	
	
	public void setWishlistItemId(Long id) {
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="wish_list_id", unique=true, nullable=false, updatable=true)		
	public WishlistBean getWishlist() {
		return wishlist;
	}

	public void setWishlist(WishlistBean wishlist) {
		this.wishlist = wishlist;
	}
	
}
