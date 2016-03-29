/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager;

import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.data.entity.LocaleBean;

/**
 * @author Roshan Titus
 *
 */
public interface LocaleEntityManager extends BaseEntityManager<LocaleBean> {

	/**
	 * @param defaultLocale
	 * @return
	 */
	LocaleBean findByLocaleCode(String defaultLocale) throws RetrievalFailureSystemException;

}
