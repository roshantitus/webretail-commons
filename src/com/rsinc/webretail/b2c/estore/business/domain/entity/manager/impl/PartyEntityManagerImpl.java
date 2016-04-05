/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl;

import java.util.List;

import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.inject.Inject;

import org.springframework.stereotype.Component;

import com.rsinc.webretail.b2c.estore.business.domain.entity.PartyBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.AddressEntityManager;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.PartyEntityManager;
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
public class PartyEntityManagerImpl extends BaseEntityManagerImpl<PartyBean> implements PartyEntityManager{
	
	@Inject
	private AddressEntityManager addressEntityManager;
	
	@Override
	public void setDefaultValues(PartyBean partyBean)  throws ValidationException{
		
		if(null != partyBean.getPartyAddress())
		{
			addressEntityManager.setDefaultValues(partyBean.getPartyAddress());
		}
		super.setDefaultValues(partyBean);
	}
	
	@Override
	public void validateForCreate(PartyBean partyBean) throws ValidationException {
		if(null == partyBean)
		{
			throw new IllegalArgumentException("Party object cannot be null"); 
		}
		if(null != partyBean.getPartyAddress())
		{
			addressEntityManager.validateForCreate(partyBean.getPartyAddress());
		}
		super.validateForCreate(partyBean);
	}	

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#deleteById(java.lang.Object)
	 */
	@Override
	public void deleteById(Object id)  throws PersistanceFailureSystemException, RecordNotFoundException, ValidationException{
		deleteById(PartyBean.class, id);
		
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#loadById(java.lang.Object)
	 */
	@Override
	public PartyBean loadById(Object id)  throws RetrievalFailureSystemException, RecordNotFoundException, ValidationException{
		return load(PartyBean.class, id);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll()
	 */
	@Override
	public List<PartyBean> findAll()  throws RetrievalFailureSystemException{
		return getPersistanceDao().findAll(PartyBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public List<PartyBean> findAll(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		return getPersistanceDao().findAll(PartyBean.class, resultLoadCriteria);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount()
	 */
	@Override
	public Long getTotalRecordCount() throws RetrievalFailureSystemException {
		return getPersistanceDao().getTotalRecordCount(PartyBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public Long getTotalRecordCount(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		return getPersistanceDao().getTotalRecordCount(PartyBean.class, resultLoadCriteria);
	}	
}
