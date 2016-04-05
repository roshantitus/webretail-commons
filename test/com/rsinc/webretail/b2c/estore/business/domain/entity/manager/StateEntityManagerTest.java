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

import com.rsinc.webretail.b2c.estore.business.domain.entity.ShippingCompanyBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.StateBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.StateEntityManager;
import com.rsinc.webretail.b2c.estore.common.config.AppConfig;
import com.rsinc.webretail.b2c.estore.common.util.CommonConstants;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
public class StateEntityManagerTest {

	private static final String STATE_CODE = "IN-KL";
	
	@Inject
	private StateEntityManager stateEntityManager;
	
	@Test
	@Transactional
	public void testForSeededValues() {

		try {
			
			List<StateBean> states = stateEntityManager.findAll();
			assertNotNull(states);
			assertTrue(states.size() > 0);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}
	
	@Test
	@Transactional
	public void testFindByStateCode() {

		try {
			
			StateBean stateBean = stateEntityManager.findByStateCode(STATE_CODE);
			assertNotNull(stateBean);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}
