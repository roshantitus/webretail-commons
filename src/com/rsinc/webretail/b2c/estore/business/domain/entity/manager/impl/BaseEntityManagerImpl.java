/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager.impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.inject.Inject;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.rsinc.webretail.b2c.estore.business.domain.entity.BaseBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.BaseEntityManager;
import com.rsinc.webretail.b2c.estore.common.exception.application.FieldError;
import com.rsinc.webretail.b2c.estore.common.exception.application.FieldValidationException;
import com.rsinc.webretail.b2c.estore.common.exception.application.RecordAlreadyExistsException;
import com.rsinc.webretail.b2c.estore.common.exception.application.RecordNotFoundException;
import com.rsinc.webretail.b2c.estore.common.exception.application.ValidationException;
import com.rsinc.webretail.b2c.estore.common.exception.system.PersistanceFailureSystemException;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria;
import com.rsinc.webretail.b2c.estore.common.util.CommonConstants;
import com.rsinc.webretail.b2c.estore.common.util.SecurityContextUtils;
import com.rsinc.webretail.b2c.estore.data.dao.PersistanceDao;
import com.rsinc.webretail.b2c.estore.data.dao.QueryDao;

/**
 * @author Roshan Titus 
 *
 */
@Component
@TransactionAttribute(TransactionAttributeType.MANDATORY)
public abstract class BaseEntityManagerImpl <T extends BaseBean> implements BaseEntityManager <T> {


	@Inject
	private PersistanceDao<T> persistanceDao;
	
	@Inject
	private QueryDao queryDao;
	
	/**
	 * 
	 */
	public BaseEntityManagerImpl() {
	}
	
	

	public QueryDao getQueryDao() {
		return queryDao;
	}


	protected PersistanceDao<T> getPersistanceDao() {
		return persistanceDao;
	}
	
	
	@Override
	public void setDefaultValues(T baseBean)  throws ValidationException{
	
		if(null == baseBean.getCreatedBy())
		{
			baseBean.setCreatedBy(SecurityContextUtils.getLoggedInUser());
		}
		
		if(null == baseBean.getCreatedDate())
		{		
			baseBean.setCreatedDate(Calendar.getInstance());
		}
		
		if(null == baseBean.getDeletedYN())
		{	
			baseBean.setDeletedYN(CommonConstants.False);
		}
		
		if(null == baseBean.getRecordVersionNo())
		{		
			baseBean.setRecordVersionNo(CommonConstants.ZERO);
		}
		
		if(null == baseBean.getUpdatedBy())
		{			
			baseBean.setUpdatedBy(SecurityContextUtils.getLoggedInUser());
		}
		
		if(null == baseBean.getUpdatedDate())
		{		
			baseBean.setUpdatedDate(Calendar.getInstance());
		}
	}

	@Override
	public void validateForCreate(T baseBean) throws ValidationException{
		// TODO validate and throw ValidationException
		if(null == baseBean)
		{
			throw new IllegalArgumentException("BaseBean object cannot be null"); 
		}	
		if(null != baseBean.key())
		{
			throw new IllegalArgumentException("Id should be null for create"); 
		}
		//validate(baseBean);
	}
	
	/**
	 * @param baseBean
	 */
	private void validate(T baseBean) throws ValidationException{
		
        //Getting Validator instance with Annotations
        ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
        Validator validator = validatorFactory.getValidator();
        
        Set<ConstraintViolation<T>> validationErrors = validator.validate(baseBean);
        
        if(!validationErrors.isEmpty())
        {
        	List<FieldError> fieldErrors = new ArrayList<FieldError>();
            for(ConstraintViolation<T> error : validationErrors)
            {
            	fieldErrors.add(new FieldError(String.valueOf(error.getPropertyPath()), error.getMessage()));                 
            }
            throw new FieldValidationException(fieldErrors);
        }
	}



	@Override
	public void validateForUpdate(T baseBean) throws ValidationException{
		// TODO Auto-generated method stub
		if(null == baseBean)
		{
			throw new IllegalArgumentException("BaseBean object is null"); 
		}
		if(null == baseBean.key())
		{
			throw new IllegalArgumentException("Id cannot be null for update"); 
		}		
		//validate(baseBean);
	}

	@Override
	public void validateForDelete(T baseBean) throws ValidationException{
		// TODO Auto-generated method stub
		if(null == baseBean)
		{
			throw new IllegalArgumentException("BaseBean object is null"); 
		}		
		if(null == baseBean.key())
		{
			throw new IllegalArgumentException("Id cannot be null for delete"); 
		}			
		//validate(baseBean);
	}
	
	private void validateForId(Object id) throws ValidationException{
		if(null == id)
		{
			throw new IllegalArgumentException("Id cannot be null for delete"); 
		}			
	}	
	
	@Override
	public T create(T baseBean)  throws PersistanceFailureSystemException, RecordAlreadyExistsException, ValidationException{
		
		setDefaultValues(baseBean);	
		validateForCreate(baseBean);
		return getPersistanceDao().create(baseBean);
	}

	@Override
	public T update(T baseBean)  throws PersistanceFailureSystemException, ValidationException{
	
		validateForUpdate(baseBean);
		return (T)getPersistanceDao().update(baseBean);
	}
	

	@Override
	public void delete(T baseBean)  throws PersistanceFailureSystemException, ValidationException{

		validateForDelete(baseBean);
		getPersistanceDao().delete(baseBean);
	}	

	@Override
	public abstract void deleteById(Object id) throws PersistanceFailureSystemException, RecordNotFoundException, ValidationException;
	
	protected void deleteById(Class<T> type, Object id) throws PersistanceFailureSystemException, RecordNotFoundException, ValidationException{
		
		validateForId(id);
		getPersistanceDao().delete(type, id);
	}


	@Override
	public List<T> bulkCreate(List<T> entities)  throws PersistanceFailureSystemException, RecordAlreadyExistsException, ValidationException{
		for(T baseBean : entities)
		{
			validateForCreate(baseBean);
			setDefaultValues(baseBean);				
		}
		return getPersistanceDao().bulkCreate(entities);
	}

	@Override
	public List<T> bulkUdate(List<T> entities)  throws PersistanceFailureSystemException, ValidationException{
		for(T baseBean : entities)
		{
			validateForUpdate(baseBean);		
		}
		return getPersistanceDao().bulkUdate(entities);
	}

	protected T load(Class<T> type, Object id) throws RetrievalFailureSystemException, RecordNotFoundException, ValidationException{
		
		validateForId(id);		
		return getPersistanceDao().find(type, id);
	}

	@Override
	public abstract T loadById(Object id) throws RetrievalFailureSystemException, RecordNotFoundException, ValidationException;
	
	@Override
	public T findByUK(Class<T> type, String queryName, Map<String, Object> params) throws RetrievalFailureSystemException
	{
		return getPersistanceDao().find(type, queryName, params);
	}

	@Override
	public abstract List<T> findAll() throws RetrievalFailureSystemException;

	protected List<T> findAll(Class<T> type)
			throws RetrievalFailureSystemException {

		return getPersistanceDao().findAll(type);
	}

	@Override
	public abstract List<T> findAll(ResultLoadCriteria resultLoadCriteria) throws RetrievalFailureSystemException;
	
	protected List<T> findAll(Class<T> type, ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {

		return getPersistanceDao().findAll(type, resultLoadCriteria);
	}


	@Override
	public abstract Long getTotalRecordCount() throws RetrievalFailureSystemException;
	
	protected Long getTotalRecordCount(Class<T> type) throws RetrievalFailureSystemException {
		return getPersistanceDao().getTotalRecordCount(type);
	}



	@Override
	public abstract Long getTotalRecordCount(ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException;
		
	protected Long getTotalRecordCount(Class<T> type, ResultLoadCriteria resultLoadCriteria)
			throws RetrievalFailureSystemException {	
		
		return getPersistanceDao().getTotalRecordCount(type, resultLoadCriteria);
	}

	

	@Override
	public List<T> findWithNamedQuery(String queryName)
			throws RetrievalFailureSystemException {

		return getPersistanceDao().findWithNamedQuery(queryName);
	}



	@Override
	public List<T> findWithNamedQuery(String queryName,
			Map<String, Object> params) throws RetrievalFailureSystemException {
		
		return getPersistanceDao().findWithNamedQuery(queryName, params);
	}



	@Override
	public List<T> findWithNamedQuery(String namedQueryName, List params)
			throws RetrievalFailureSystemException {
		
		return getPersistanceDao().findWithNamedQuery(namedQueryName, params);
	}



	@Override
	public List<T> findWithNamedQuery(String queryName, int resultLimit)
			throws RetrievalFailureSystemException {
		
		return getPersistanceDao().findWithNamedQuery(queryName, resultLimit);
	}



	@Override
	public List<T> findWithNamedQuery(String namedQueryName, Map params,
			int resultLimit) throws RetrievalFailureSystemException {
		
		return getPersistanceDao().findWithNamedQuery(namedQueryName, params,
				resultLimit);
	}



	@Override
	public List<T> findWithNamedQuery(String namedQueryName, List params,
			int resultLimit) throws RetrievalFailureSystemException {
		
		return getPersistanceDao().findWithNamedQuery(namedQueryName, params,
				resultLimit);
	}



	@Override
	public List findByNativeQuery(String sql, Class type)
			throws RetrievalFailureSystemException {
		
		return getPersistanceDao().findByNativeQuery(sql, type);
	}



	@Override
	public List findByNativeQuery(String sql, Class type, List params)
			throws RetrievalFailureSystemException {
		
		return getPersistanceDao().findByNativeQuery(sql, type, params);
	}



	@Override
	public List findByNativeQuery(String sql, Class type, List params,
			int resultLimit) throws RetrievalFailureSystemException {
		
		return getPersistanceDao().findByNativeQuery(sql, type, params, resultLimit);
	}

	
	//Query methods

	@Override
	public <E> List<E> queryForList(String query, Class<E> clazz)
			throws RetrievalFailureSystemException {		
		return queryDao.queryForList(query, clazz);
	}



	@Override
	public <E> List<E> queryForList(String query, Object[] args, Class<E> clazz)
			throws RetrievalFailureSystemException {
		return queryDao.queryForList(query, args, clazz);
	}



	@Override
	public <E> List<E> queryForList(String query, RowMapper<E> mapper)
			throws RetrievalFailureSystemException {
		return queryDao.queryForList(query, mapper);
	}



	@Override
	public <E> List<E> queryForList(String query, Object[] args,
			RowMapper<E> mapper) throws RetrievalFailureSystemException {
		return queryDao.queryForList(query, args, mapper);
	}



	@Override
	public <E> List<E> queryForBeanList(String query, Object[] args,
			Class<E> clazz) throws RetrievalFailureSystemException {
		return queryDao.queryForBeanList(query, args, clazz);
	}



	@Override
	public <E> E queryForBean(String query, Object[] args, Class<E> clazz)
			throws RetrievalFailureSystemException {
		return queryDao.queryForBean(query, args, clazz);
	}



	@Override
	public <E> E queryForObject(String query, Object[] args, Class<E> clazz)
			throws RetrievalFailureSystemException {
		return queryDao.queryForObject(query, args, clazz);
	}



	@Override
	public <E> E queryForObject(String query, RowMapper<E> mapper)
			throws RetrievalFailureSystemException {
		return queryDao.queryForObject(query, mapper);
	}



	@Override
	public <E> E queryForObject(String query, Object[] args, RowMapper<E> mapper)
			throws RetrievalFailureSystemException {
		return queryDao.queryForObject(query, args, mapper);
	}



	@Override
	public Map<String, Object> queryForMap(String query, Object[] args)
			throws RetrievalFailureSystemException {
		return queryDao.queryForMap(query, args);
	}



	@Override
	public List<Map<String, Object>> queryForList(String query)
			throws RetrievalFailureSystemException {
		return queryDao.queryForList(query);
	}



	@Override
	public List<Map<String, Object>> queryForList(String query, Object[] args)
			throws RetrievalFailureSystemException {
		return queryDao.queryForList(query, args);
	}
		
}
