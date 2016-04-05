/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager;

import java.util.List;

import com.rsinc.webretail.b2c.estore.business.domain.entity.OrderBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.enums.OrderStatus;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.common.paging.ResultLoadCriteria;

/**
 * @author Roshan Titus
 *
 */
public interface OrderEntityManager extends BaseEntityManager<OrderBean>{


	/**
	 * @param orderStatusList
	 * @return
	 * @throws RetrievalFailureSystemException 
	 */
	List<OrderBean> findOrdersByStatus(List<OrderStatus> orderStatusList) throws RetrievalFailureSystemException;

	/**
	 * 
	 * @param resultLoadCriteria
	 * @param orderStatusList
	 * @return
	 * @throws RetrievalFailureSystemException
	 */
	List<OrderBean> findOrdersByStatus(ResultLoadCriteria resultLoadCriteria, List<OrderStatus> orderStatusList) throws RetrievalFailureSystemException;
	
	/**
	 * @param orderStatusList
	 * @return
	 * @throws RetrievalFailureSystemException 
	 */
	Long findOrderCountByStatus(List<OrderStatus> orderStatusList) throws RetrievalFailureSystemException;	
}
