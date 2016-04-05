/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author Roshan Titus 
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="role_master")
public class RoleBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3540932741514723040L;
	
	@NotEmpty
	private String roleCode;
	
	@NotEmpty
	private String roleName;
	private String roleDescription;
	private List<UserBean> users;
	/**
	 * 
	 */
	public RoleBean() {
		// TODO Auto-generated constructor stub
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "role_id")
	public Long getRoleId() {
		return id;
	}	
	
	public void setRoleId(Long id) {
		this.id = id;
	}	

	@Column(name = "role_code", unique=true, nullable=false)
	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	@Column(name = "role_name")
	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	@Column(name = "role_description")
	public String getRoleDescription() {
		return roleDescription;
	}

	public void setRoleDescription(String roleDescription) {
		this.roleDescription = roleDescription;
	}

	@ManyToMany(mappedBy="roles")
	public List<UserBean> getUsers() {
		return users;
	}

	public void setUsers(List<UserBean> users) {
		this.users = users;
	}

	
}
