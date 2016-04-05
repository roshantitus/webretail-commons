/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.service.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.CategoryEntityManager;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.OrderEntityManager;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.ProductEntityManager;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.UserEntityManager;
import com.rsinc.webretail.b2c.estore.business.service.EStoreService;

/**
 * @author Roshan Titus
 *
 */
@Service
@Transactional
public abstract class BaseEStoreServiceImpl implements EStoreService {

	@Inject
	private UserEntityManager userEntityManager;
	
	@Inject
	private CategoryEntityManager categoryEntityManager;
	
	@Inject
	private ProductEntityManager productEntityManager;
	
	@Inject
	private OrderEntityManager orderEntityManager;	

	
	protected UserEntityManager getUserEntityManager() {
		return userEntityManager;
	}	
	

	protected CategoryEntityManager getCategoryEntityManager() {
		return categoryEntityManager;
	}


	protected ProductEntityManager getProductEntityManager() {
		return productEntityManager;
	}


	protected OrderEntityManager getOrderEntityManager() {
		return orderEntityManager;
	}


}
