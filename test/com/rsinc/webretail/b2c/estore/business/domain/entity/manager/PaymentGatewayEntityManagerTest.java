/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager;

import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.assertTrue;
import static junit.framework.Assert.fail;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rsinc.webretail.b2c.estore.business.domain.entity.PaymentGatewayBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.PaymentGatewayEntityManager;
import com.rsinc.webretail.b2c.estore.common.config.AppConfig;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
public class PaymentGatewayEntityManagerTest {
	
	@Inject
	private PaymentGatewayEntityManager paymentGatewayEntityManager;
	
	@Test
	@Transactional
	public void testForSeededValues() {

		try {
			
			List<PaymentGatewayBean> paymentGateways = paymentGatewayEntityManager.findAll();
			assertNotNull(paymentGateways);
			assertTrue(paymentGateways.size() > 0);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}
