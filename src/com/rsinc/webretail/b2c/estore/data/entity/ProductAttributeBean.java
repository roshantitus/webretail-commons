/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Roshan Titus
 * 
 * brand, color, weight, size, model, Product Dimensions
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="product_attribute")
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
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "product_attribute_id")
	public Long getProductAttributeId() {
		return id;
	}	
	
	public void setProductAttributeId(Long id) {
		this.id = id;
	}		

	@Column(name = "attribute_name")
	public String getAttributeName() {
		return attributeName;
	}

	public void setAttributeName(String attributeName) {
		this.attributeName = attributeName;
	}

	@Column(name = "attribute_value")
	public String getAttributeValue() {
		return attributeValue;
	}

	public void setAttributeValue(String attributeValue) {
		this.attributeValue = attributeValue;
	}
	
	
}
