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

import com.rsinc.webretail.b2c.estore.business.domain.entity.RoleBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.RoleEntityManager;
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
public class RoleEntityManagerImpl extends BaseEntityManagerImpl<RoleBean>
		implements RoleEntityManager {

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl.BaseEntityManagerImpl#deleteById(java.lang.Object)
	 */
	@Override
	public void deleteById(Object id) throws PersistanceFailureSystemException,
			RecordNotFoundException, ValidationException {
		// TODO implement method functionality
		
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl.BaseEntityManagerImpl#loadById(java.lang.Object)
	 */
	@Override
	public RoleBean loadById(Object id) throws RetrievalFailureSystemException,
			RecordNotFoundException, ValidationException {
		// TODO implement method functionality
		return null;
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl.BaseEntityManagerImpl#findAll()
	 */
	@Override
	public List<RoleBean> findAll() throws RetrievalFailureSystemException {
		return getPersistanceDao().findAll(RoleBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl.BaseEntityManagerImpl#findAll(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public List<RoleBean> findAll(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		// TODO implement method functionality
		return null;
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount()
	 */
	@Override
	public Long getTotalRecordCount() throws RetrievalFailureSystemException {
		// TODO implement method functionality
		return null;
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public Long getTotalRecordCount(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		// TODO implement method functionality
		return null;
	}


	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.business.domain.entity.manager.RoleEntityManager#findByRoleCode(java.lang.String)
	 */
	@Override
	public RoleBean findByRoleCode(String roleCode)
			throws RetrievalFailureSystemException {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("roleCode", roleCode);
		return findByUK(RoleBean.class, "findByRoleCode", params);
	}
	
}
