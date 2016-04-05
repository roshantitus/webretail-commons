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
@Table(name="user_image")
public class UserImageBean extends ImageBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4855271409002386789L;
	
	private UserBean user;

	public UserImageBean() {
		super();
	}	

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "user_image_id")	
	public Long getUserImageId() {
		return id;
	}

	public void setUserImageId(Long id) {
		this.id = id;
	}	

	@OneToOne(mappedBy="profilePicture", fetch = FetchType.LAZY)		
	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}
}
