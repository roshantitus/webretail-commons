/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

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
@Table(name="wish_list")
public class WishlistBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5489433120758062534L;

	private UserBean user;
	private List<WishlistItemBean> wishlistItems;

	public WishlistBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "wish_list_id")
	public Long getWishlistId() {
		return id;
	}	
	
	public void setWishlistId(Long id) {
		this.id = id;
	}	
	
	@OneToMany(mappedBy="wishlist", fetch = FetchType.EAGER)	
	public List<WishlistItemBean> getWishlistItems() {
		return wishlistItems;
	}

	public void setWishlistItems(List<WishlistItemBean> wishlistItems) {
		this.wishlistItems = wishlistItems;
	}

	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id", unique=true, nullable=false, updatable=true)	
	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}
	
	
}
