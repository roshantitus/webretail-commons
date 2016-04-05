/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;

import org.springframework.stereotype.Component;

import com.rsinc.webretail.b2c.estore.business.domain.entity.LocaleBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.LocaleEntityManager;
import com.rsinc.webretail.b2c.estore.common.exception.application.RecordNotFoundException;
import com.rsinc.webretail.b2c.estore.common.exception.application.ValidationException;
import com.rsinc.webretail.b2c.estore.common.exception.system.PersistanceFailureSystemException;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria;

/**
 * @author Roshan Titus
 *
 */
@Component
@TransactionAttribute(TransactionAttributeType.MANDATORY)
public class LocaleEntityManagerImpl extends BaseEntityManagerImpl<LocaleBean> implements LocaleEntityManager {

	/**
	 * 
	 */
	public LocaleEntityManagerImpl() {
		// TODO initialize object
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.BaseEntityManager#setDefaultValues(com.rsinc.webretail.b2c.estore.data.entity.BaseBean)
	 */
	@Override
	public void setDefaultValues(LocaleBean t) {
		// TODO implement method functionality

	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.BaseEntityManager#validateForCreate(com.rsinc.webretail.b2c.estore.data.entity.BaseBean)
	 */
	@Override
	public void validateForCreate(LocaleBean t) throws ValidationException {
		// TODO implement method functionality

	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.BaseEntityManager#validateForUpdate(com.rsinc.webretail.b2c.estore.data.entity.BaseBean)
	 */
	@Override
	public void validateForUpdate(LocaleBean t) throws ValidationException {
		// TODO implement method functionality

	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.BaseEntityManager#validateForDelete(com.rsinc.webretail.b2c.estore.data.entity.BaseBean)
	 */
	@Override
	public void validateForDelete(LocaleBean t) throws ValidationException {
		// TODO implement method functionality

	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#deleteById(java.lang.Object)
	 */
	@Override
	public void deleteById(Object id) throws PersistanceFailureSystemException,
			RecordNotFoundException, ValidationException {
		// TODO implement method functionality
		
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#loadById(java.lang.Object)
	 */
	@Override
	public LocaleBean loadById(Object id)
			throws RetrievalFailureSystemException, RecordNotFoundException,
			ValidationException {
		// TODO implement method functionality
		return null;
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll()
	 */
	@Override
	public List<LocaleBean> findAll() throws RetrievalFailureSystemException {
		return getPersistanceDao().findAll(LocaleBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public List<LocaleBean> findAll(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		// TODO implement method functionality
		return null;
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount()
	 */
	@Override
	public Long getTotalRecordCount() throws RetrievalFailureSystemException {
		// TODO implement method functionality
		return null;
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public Long getTotalRecordCount(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		// TODO implement method functionality
		return null;
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.LocaleEntityManager#findByLocaleCode(java.lang.String)
	 */
	@Override
	public LocaleBean findByLocaleCode(String localeCode)
			throws RetrievalFailureSystemException {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("localeCode", localeCode);
		return findByUK(LocaleBean.class, "findLocaleByUK", params);
	}



}
