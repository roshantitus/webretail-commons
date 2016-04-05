/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager;

import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.fail;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rsinc.webretail.b2c.estore.common.config.AppConfig;
import com.rsinc.webretail.b2c.estore.common.util.CommonConstants;
import com.rsinc.webretail.b2c.estore.data.entity.CurrencyBean;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
public class CurrencyEntityManagerTest {

	private static final String CURRENCY_CODE = "INR";
	
	@Inject
	private CurrencyEntityManager currencyEntityManager;
	
	@Test
	@Transactional
	public void testFindByCurrencyCode() {

		try {
			
			CurrencyBean currencyBean = currencyEntityManager.findByCurrencyCode(CURRENCY_CODE);
			assertNotNull(currencyBean);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}
