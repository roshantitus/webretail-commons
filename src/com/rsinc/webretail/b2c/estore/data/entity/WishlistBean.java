/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.List;

/**
 * @author Roshan Titus
 *
 */
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

	public List<WishlistItemBean> getWishlistItems() {
		return wishlistItems;
	}

	public void setWishlistItems(List<WishlistItemBean> wishlistItems) {
		this.wishlistItems = wishlistItems;
	}

	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}
	
	
}
