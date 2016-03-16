/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

/**
 * @author Roshan Titus
 *
 */
public class WishlistItemBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8284094737093685496L;

	private ProductBean product;
	
	public WishlistItemBean() {
		super();
		// TODO initialize object
	}

	public ProductBean getProduct() {
		return product;
	}

	public void setProduct(ProductBean product) {
		this.product = product;
	}

	
}
