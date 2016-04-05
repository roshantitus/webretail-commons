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

import com.rsinc.webretail.b2c.estore.business.domain.entity.CurrencyBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.CurrencyEntityManager;
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
public class CurrencyEntityManagerImpl extends BaseEntityManagerImpl<CurrencyBean>
		implements CurrencyEntityManager {


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
	public CurrencyBean loadById(Object id)
			throws RetrievalFailureSystemException, RecordNotFoundException,
			ValidationException {
		// TODO implement method functionality
		return null;
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll()
	 */
	@Override
	public List<CurrencyBean> findAll() throws RetrievalFailureSystemException {
		return getPersistanceDao().findAll(CurrencyBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public List<CurrencyBean> findAll(ResultLoadCriteria resultLoadCriteria)
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
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.CurrencyEntityManager#findByCurrencyCode(java.lang.String)
	 */
	@Override
	public CurrencyBean findByCurrencyCode(String currencyCode)
			throws RetrievalFailureSystemException {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("currencyCode", currencyCode);
		return findByUK(CurrencyBean.class, "findCurrencyByUK", params);
	}
}
