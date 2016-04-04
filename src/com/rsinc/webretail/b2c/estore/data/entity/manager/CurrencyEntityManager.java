/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager;

import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.data.entity.CurrencyBean;

/**
 * @author Roshan Titus
 *
 */
public interface CurrencyEntityManager extends BaseEntityManager<CurrencyBean> {

	CurrencyBean findByCurrencyCode(String currencyCode) throws RetrievalFailureSystemException;
}
