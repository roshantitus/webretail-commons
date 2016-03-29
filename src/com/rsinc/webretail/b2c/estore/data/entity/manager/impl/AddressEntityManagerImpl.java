/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager.impl;

import java.util.List;

import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;

import org.springframework.stereotype.Component;

import com.rsinc.webretail.b2c.estore.common.exception.application.RecordNotFoundException;
import com.rsinc.webretail.b2c.estore.common.exception.application.ValidationException;
import com.rsinc.webretail.b2c.estore.common.exception.system.PersistanceFailureSystemException;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria;
import com.rsinc.webretail.b2c.estore.data.entity.AddressBean;
import com.rsinc.webretail.b2c.estore.data.entity.manager.AddressEntityManager;

/**O
 * @author Roshan Titus 
 *
 */
@Component
@TransactionAttribute(TransactionAttributeType.MANDATORY)
public class AddressEntityManagerImpl extends BaseEntityManagerImpl<AddressBean> implements AddressEntityManager {

	/**
	 * 
	 */

	
	public AddressEntityManagerImpl() {
	}
	
	@Override
	public void setDefaultValues(AddressBean addressBean)  throws ValidationException{
	
		super.setDefaultValues(addressBean);
	}

	@Override
	public void validateForCreate(AddressBean addressBean) throws ValidationException {
		if(null == addressBean)
		{
			throw new IllegalArgumentException("AddressBean object cannot be null"); 
		}			
		super.validateForCreate(addressBean);
	}
	
	@Override
	public AddressBean loadById(Object id)  throws RetrievalFailureSystemException, RecordNotFoundException, ValidationException{

		return load(AddressBean.class, id);
	}

	@Override
	public void deleteById(Object id) throws PersistanceFailureSystemException, RecordNotFoundException, ValidationException{
		
		deleteById(AddressBean.class, id);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll()
	 */
	@Override
	public List<AddressBean> findAll()  throws RetrievalFailureSystemException{
		return getPersistanceDao().findAll(AddressBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#findAll(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public List<AddressBean> findAll(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		return getPersistanceDao().findAll(AddressBean.class, resultLoadCriteria);
	}
	
	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount()
	 */
	@Override
	public Long getTotalRecordCount() throws RetrievalFailureSystemException {
		return getPersistanceDao().getTotalRecordCount(AddressBean.class);
	}

	/* (non-Javadoc)
	 * @see com.rsinc.webretail.b2c.estore.data.entity.manager.impl.BaseEntityManagerImpl#getTotalRecordCount(com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria)
	 */
	@Override
	public Long getTotalRecordCount(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {
		return getPersistanceDao().getTotalRecordCount(AddressBean.class, resultLoadCriteria);
	}	
}
