/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.rsinc.webretail.b2c.estore.business.domain.entity.CityBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.LocaleBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.CityEntityManager;
import com.rsinc.webretail.b2c.estore.common.exception.application.RecordAlreadyExistsException;
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
public class CityEntityManagerImpl extends BaseEntityManagerImpl<CityBean> implements
		CityEntityManager {


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
	public CityBean loadById(Object id) throws RetrievalFailureSystemException,
			RecordNotFoundException, ValidationException {
		// TODO implement method functionality
		return null;
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll()
	 */
	@Override
	public List<CityBean> findAll() throws RetrievalFailureSystemException {
		return getPersistanceDao().findAll(CityBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public List<CityBean> findAll(ResultLoadCriteria resultLoadCriteria)
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
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.CityEntityManager#findByCityCode(java.lang.String)
	 */
	@Override
	public CityBean findByCityCode(String cityCde)
			throws RetrievalFailureSystemException {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("cityCode", cityCde);
		return findByUK(CityBean.class, "findCityByUK", params);
	}

}
