/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.beans.Transient;
import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
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

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="cart")
public class ShoppingCartBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7679102672484694933L;

	private UserBean user;
	private List<ShoppingCartLineItemBean> cartItems;
	
	public ShoppingCartBean() {
		super();
	}
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "cart_id")
	public Long getShoppingCartId() {
		return id;
	}	
	
	public void setShoppingCartId(Long id) {
		this.id = id;
	}
	
	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id", unique=true, nullable=false, updatable=true)		
	public UserBean getUser() {
		return user;
	}
	public void setUser(UserBean user) {
		this.user = user;
	}
	
	@OneToMany(mappedBy="cart", fetch = FetchType.EAGER)	
	public List<ShoppingCartLineItemBean> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<ShoppingCartLineItemBean> cartItems) {
		this.cartItems = cartItems;
	}	
	
	public Double totalAmount()
	{
		Double totalAmount = 0.0;
		if(null != getCartItems())
		{
			for(ShoppingCartLineItemBean item : getCartItems())
			{
				totalAmount += item.itemTotal();
			}
		}
		return totalAmount;
	}		
}
