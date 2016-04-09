/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.util.Calendar;

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
@Table(name="user_logn_history")
public class UserLoginHistoryBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2523125620071151776L;
	/**
	 * 
	 */
	private UserBean user;
	private Calendar loginTime;
	private Calendar logoutTime;
	private Boolean offlineYN;
	
	public UserLoginHistoryBean() {
		// TODO initialize object
	}
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "user_logn_history_id")
	public Long getUserLoginHistoryId() {
		return id;
	}	
	
	public void setUserLoginHistoryId(Long id) {
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
	
	@Column(name = "login_time")
	public Calendar getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Calendar loginTime) {
		this.loginTime = loginTime;
	}

	@Column(name = "logout_time")
	public Calendar getLogoutTime() {
		return logoutTime;
	}

	public void setLogoutTime(Calendar logoutTime) {
		this.logoutTime = logoutTime;
	}

	@Column(name = "offline_yn")	
	public Boolean getOfflineYN() {
		return offlineYN;
	}

	public void setOfflineYN(Boolean offlineYN) {
		this.offlineYN = offlineYN;
	}	
	
	
}
