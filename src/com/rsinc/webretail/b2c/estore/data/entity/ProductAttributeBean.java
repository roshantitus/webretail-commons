/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

/**
 * @author Roshan Titus
 * 
 * brand, color, weight, size, model, Product Dimensions
 *
 */
public class ProductAttributeBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5438010302799867069L;

	private String attributeName;
	private String attributeValue;
	
	public ProductAttributeBean() {
		super();
		// TODO initialize object
	}

	public String getAttributeName() {
		return attributeName;
	}

	public void setAttributeName(String attributeName) {
		this.attributeName = attributeName;
	}

	public String getAttributeValue() {
		return attributeValue;
	}

	public void setAttributeValue(String attributeValue) {
		this.attributeValue = attributeValue;
	}
	
	
}
