/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

/**
 * @author Roshan Titus
 *
 */
public class PoductImageBean extends ImageBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6979969065456679073L;
	
	private ProductBean product;
	private ImageBean image;	
	private Integer sortOrder;		

	public PoductImageBean() {
		super();
		// TODO initialize object
	}

	public ProductBean getProduct() {
		return product;
	}

	public void setProduct(ProductBean product) {
		this.product = product;
	}

	public ImageBean getImage() {
		return image;
	}


	public void setImage(ImageBean image) {
		this.image = image;
	}


	public Integer getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}
	
		
}
