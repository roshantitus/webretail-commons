/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager.impl;

import java.util.List;

import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.inject.Inject;

import org.springframework.stereotype.Component;

import com.rsinc.webretail.b2c.estore.common.exception.application.RecordNotFoundException;
import com.rsinc.webretail.b2c.estore.common.exception.application.ValidationException;
import com.rsinc.webretail.b2c.estore.common.exception.system.PersistanceFailureSystemException;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria;
import com.rsinc.webretail.b2c.estore.common.util.CommonConstants;
import com.rsinc.webretail.b2c.estore.data.entity.UserBean;
import com.rsinc.webretail.b2c.estore.data.entity.enums.UserStatus;
import com.rsinc.webretail.b2c.estore.data.entity.manager.AuthenticationEntityManager;
import com.rsinc.webretail.b2c.estore.data.entity.manager.LocaleEntityManager;
import com.rsinc.webretail.b2c.estore.data.entity.manager.PartyEntityManager;
import com.rsinc.webretail.b2c.estore.data.entity.manager.UserEntityManager;

/**O
 * @author Roshan Titus 
 *
 */
@Component
@TransactionAttribute(TransactionAttributeType.MANDATORY)
public class UserEntityManagerImpl extends BaseEntityManagerImpl<UserBean> implements UserEntityManager {

	
	@Inject
	private PartyEntityManager partyEntityManager;
	
	@Inject
	private LocaleEntityManager localeEntityManager;
	
	@Inject
	private AuthenticationEntityManager authenticationEntityManager;	
	
	public UserEntityManagerImpl() {
	}
	
	@Override
	public void setDefaultValues(UserBean userBean)  throws ValidationException{
	
		if(null == userBean.getRewardPoints())
		{
			userBean.setRewardPoints(CommonConstants.ZERO);
		}
		if(null == userBean.getLocale())
		{
			try {
				userBean.setLocale(localeEntityManager.findByLocaleCode(CommonConstants.DEFAULT_LOCALE));
			} catch (RetrievalFailureSystemException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		if(null == userBean.getSubscribedForNewsLetterYN())
		{
			userBean.setSubscribedForNewsLetterYN(CommonConstants.False);
		}		
		if(null == userBean.getStatus())
		{
			userBean.setStatus(UserStatus.NEW);
		}		
		
		if(null != userBean.getParty())
		{
			partyEntityManager.setDefaultValues(userBean.getParty());
		}
		
		if(null != userBean.getAuthentication())
		{
			authenticationEntityManager.setDefaultValues(userBean.getAuthentication());
		}
		
		super.setDefaultValues(userBean);
	}

	@Override
	public void validateForCreate(UserBean userBean) throws ValidationException {
		if(null == userBean)
		{
			throw new IllegalArgumentException("UserBean object cannot be null"); 
		}			
		partyEntityManager.validateForCreate(userBean.getParty());
		super.validateForCreate(userBean);
	}
	
	@Override
	public UserBean loadById(Object id) throws RetrievalFailureSystemException, RecordNotFoundException, ValidationException{

		return load(UserBean.class, id);
	}

	@Override
	public void deleteById(Object id) throws PersistanceFailureSystemException, RecordNotFoundException, ValidationException{
		
		deleteById(UserBean.class, id);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll(java.lang.Class)
	 */
	@Override
	public List<UserBean> findAll()  throws RetrievalFailureSystemException{
		return getPersistanceDao().findAll(UserBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public List<UserBean> findAll(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		return getPersistanceDao().findAll(UserBean.class, resultLoadCriteria);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount()
	 */
	@Override
	public Long getTotalRecordCount() throws RetrievalFailureSystemException {
		return getPersistanceDao().getTotalRecordCount(UserBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public Long getTotalRecordCount(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		return getPersistanceDao().getTotalRecordCount(UserBean.class, resultLoadCriteria);
	}
	
	
}
