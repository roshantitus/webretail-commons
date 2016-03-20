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
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="payment_gateway")
public class PaymentGatewayBean extends VenderBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5586270345648199420L;
	private String integrationURL;

	public PaymentGatewayBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "payment_gateway_id")
	public Long getPaymentGatewayId() {
		return id;
	}	
	
	public void setPaymentGatewayId(Long id) {
		this.id = id;
	}	
	
	@Column(name = "integration_url")
	public String getIntegrationURL() {
		return integrationURL;
	}

	public void setIntegrationURL(String integrationURL) {
		this.integrationURL = integrationURL;
	}	
	
}
