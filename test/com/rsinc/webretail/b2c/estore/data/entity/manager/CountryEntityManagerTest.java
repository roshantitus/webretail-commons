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
import com.rsinc.webretail.b2c.estore.data.entity.CountryBean;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
public class CountryEntityManagerTest {

	private static final String COUNTRY_CODE = "IN";
	
	@Inject
	private CountryEntityManager countryEntityManager;
	
	@Test
	@Transactional
	public void testFindByCountryCode() {

		try {
			
			CountryBean countryBean = countryEntityManager.findByCountryCode(COUNTRY_CODE);
			assertNotNull(countryBean);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}
