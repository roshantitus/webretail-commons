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

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author Roshan Titus 
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="user_authentication")
public class AuthenticationBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2632290667245015904L;
	
	private UserBean user;
	
	@NotEmpty
	private String username;
	
	@NotEmpty
	private String password;
	/**
	 * 
	 */
	public AuthenticationBean() {
		// TODO Auto-generated constructor stub
	}
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "user_authentication_id")
	public Long getAuthenticationId() {
		return id;
	}	
	
	public void setAuthenticationId(Long id) {
		this.id = id;
	}	
	
	@OneToOne(mappedBy="authentication", fetch = FetchType.LAZY)		
	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}
	
	@Column(name = "username", unique=true)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name = "password")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
