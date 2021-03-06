/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.io.Serializable;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

/**
 * @author Roshan Titus 
 *
 */
@MappedSuperclass
public abstract class BaseBean implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -302972352018750735L;

	//The ID field in MappedSuperclass. 
	//Getters and Setters and mapping for this field will be created only in the subclasses.	
	protected Long id;
	
	//@NotNull
	protected UserBean createdBy;
	
	//@NotNull
	protected Calendar createdDate;
	
	//@NotNull
	protected UserBean updatedBy;
	
	//@NotNull
	protected Calendar updatedDate;
	
	
	protected Integer recordVersionNo;
	protected Boolean deletedYN;
	
	public BaseBean() {
		super();
	}

	public Long key() {
		return id;
	}

	@OneToOne(optional=true, fetch = FetchType.EAGER)
    @JoinColumn(name="created_by", unique=false, nullable=true, updatable=false)
	public UserBean getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(UserBean createdBy) {
		this.createdBy = createdBy;
	}
	
	@Column(name = "created_date")	
	@Temporal(TemporalType.TIMESTAMP)
	public Calendar getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Calendar createdDate) {
		this.createdDate = createdDate;
	}
	
	@OneToOne(optional=true, fetch = FetchType.EAGER)
    @JoinColumn(name="updated_by", unique=false, nullable=true, updatable=false)		
	public UserBean getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(UserBean updatedBy) {
		this.updatedBy = updatedBy;
	}
	
	@Column(name = "updated_date")	
	@Temporal(TemporalType.TIMESTAMP)
	public Calendar getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(Calendar updatedDate) {
		this.updatedDate = updatedDate;
	}
	
	@Column(name = "record_version_no")	
	public Integer getRecordVersionNo() {
		return recordVersionNo;
	}
	public void setRecordVersionNo(Integer recordVersionNo) {
		this.recordVersionNo = recordVersionNo;
	}
	
	@Column(name = "deleted_yn")	
	public Boolean getDeletedYN() {
		return deletedYN;
	}
	public void setDeletedYN(Boolean deletedYN) {
		this.deletedYN = deletedYN;
	}

	@Override
	public int hashCode() {
        HashCodeBuilder hcbuilder = new HashCodeBuilder(17, 37);
        hcbuilder = hcbuilder.append(this.key());
        return hcbuilder.toHashCode();
	}

	@Override
	public boolean equals(Object target) {
		
        if (null == target || !(target.getClass() == getClass()))
        {
            return false;
        }
        BaseBean bean  = (BaseBean) target;

        EqualsBuilder equalsBuilder = new EqualsBuilder();		
        equalsBuilder = equalsBuilder.append(this.key(), bean.key());
        return equalsBuilder.isEquals();
	}

	@Override
	public String toString() {
		return "BaseBean [id=" + id + ", createdBy=" + createdBy.getUserId() + ", createdDate=" + createdDate + ", updatedBy="
				+ updatedBy.getUserId() + ", updatedDate=" + updatedDate + ", recordVersionNo=" + recordVersionNo + ", deletedYN="
				+ deletedYN + "]";
	}
	
	
}
