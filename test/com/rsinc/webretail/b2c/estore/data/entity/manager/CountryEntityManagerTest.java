/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager;

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

import com.rsinc.webretail.b2c.estore.common.config.AppConfig;
import com.rsinc.webretail.b2c.estore.common.util.CommonConstants;
import com.rsinc.webretail.b2c.estore.data.entity.CountryBean;
import com.rsinc.webretail.b2c.estore.data.entity.CurrencyBean;

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
	public void testForSeededValues() {

		try {
			
			List<CountryBean> countries = countryEntityManager.findAll();
			assertNotNull(countries);
			assertTrue(countries.size() > 0);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}
	
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
