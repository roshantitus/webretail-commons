/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import com.rsinc.webretail.b2c.estore.data.entity.enums.UserStatus;


/**
 * @author Roshan Titus 
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="user")
public class UserBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -438375391659822777L;
	
	@NotNull
	private PartyBean party;
	
	@NotNull
	private AuthenticationBean authentication;
	
	@NotNull
	private UserStatus status;
	
	@NotNull
	private LocaleBean locale;
	
	@NotNull
	private CurrencyBean currency;
	
	private List<RoleBean> roles;
	private AddressBean billingAddress;
	private AddressBean deliveryAddress;
	private Integer rewardPoints;
	private Boolean subscribedForNewsLetterYN;
	
	private UserImageBean profilePicture;
	
	public UserBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "user_id")
	public Long getUserId() {
		return id;
	}

	public void setUserId(Long id) {
		this.id = id;
	}
	
	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="party_id", unique=true, nullable=false, updatable=true)		
	public PartyBean getParty() {
		return party;
	}

	public void setParty(PartyBean party) {
		this.party = party;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)	
	@JoinColumn(name="user_authentication_id", unique=true, nullable=false, updatable=true)	
	public AuthenticationBean getAuthentication() {
		return authentication;
	}

	public void setAuthentication(AuthenticationBean authentication) {
		this.authentication = authentication;
	}

	@Column(name = "status")	
	public UserStatus getStatus() {
		return status;
	}

	public void setStatus(UserStatus status) {
		this.status = status;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="locale_code", unique=false, nullable=false, updatable=true)
	public LocaleBean getLocale() {
		return locale;
	}

	public void setLocale(LocaleBean locale) {
		this.locale = locale;
	}

	@ManyToMany
	@JoinTable(name="user_role",
	      joinColumns=@JoinColumn(name="user_id", referencedColumnName="user_id"),
	      inverseJoinColumns=@JoinColumn(name="role_id", referencedColumnName="role_id"))
	public List<RoleBean> getRoles() {
		return roles;
	}


	public void setRoles(List<RoleBean> roles) {
		this.roles = roles;
	}

	@OneToOne(optional=true, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="billing_address_id", unique=false, nullable=true, updatable=true)	
	public AddressBean getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(AddressBean billingAddress) {
		this.billingAddress = billingAddress;
	}

	@OneToOne(optional=true, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="delivery_address_id", unique=false, nullable=true, updatable=true)	
	public AddressBean getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(AddressBean deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	@Column(name = "reward_points")	
	public Integer getRewardPoints() {
		return rewardPoints;
	}

	public void setRewardPoints(Integer rewardPoints) {
		this.rewardPoints = rewardPoints;
	}

	@Column(name = "subscribed_for_news_letter_yn")	
	public Boolean getSubscribedForNewsLetterYN() {
		return subscribedForNewsLetterYN;
	}

	public void setSubscribedForNewsLetterYN(Boolean subscribedForNewsLetterYN) {
		this.subscribedForNewsLetterYN = subscribedForNewsLetterYN;
	}

	@OneToOne(optional=true, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="user_image_id", unique=true, nullable=true, updatable=true)		
	public UserImageBean getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(UserImageBean profilePicture) {
		this.profilePicture = profilePicture;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="currency_code", unique=false, nullable=true, updatable=true)	
	public CurrencyBean getCurrency() {
		return currency;
	}

	public void setCurrency(CurrencyBean currency) {
		this.currency = currency;
	}

}
