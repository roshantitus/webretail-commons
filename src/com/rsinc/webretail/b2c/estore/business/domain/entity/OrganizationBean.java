/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@DiscriminatorValue(value="O")
public class OrganizationBean extends PartyBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3404916693033019421L;

	public OrganizationBean() {
		super();
		// TODO initialize object
	}
}
