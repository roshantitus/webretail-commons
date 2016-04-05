/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="user_preference")
public class UserPreferenceBean extends PreferenceBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8944650041052087178L;
	private UserBean user;
	
	public UserPreferenceBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "user_preference_id")
	public Long getUserPreferenceId() {
		return id;
	}	
	
	public void setUserPreferenceId(Long id) {
		this.id = id;
	}	
	
	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id", unique=false, nullable=false, updatable=true)	
	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}

}
