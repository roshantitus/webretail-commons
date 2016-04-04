/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.dao;

import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.assertNull;
import static junit.framework.Assert.fail;

import java.util.Calendar;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rsinc.webretail.b2c.estore.common.config.AppConfig;
import com.rsinc.webretail.b2c.estore.common.exception.application.RecordNotFoundException;
import com.rsinc.webretail.b2c.estore.common.logging.Logger;
import com.rsinc.webretail.b2c.estore.common.logging.LoggerFactory;
import com.rsinc.webretail.b2c.estore.data.entity.LocaleBean;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
@Transactional
public class PersistanceDaoTest {
	
	private static final String PERSON_EMAIL_ID = "roshantitus@gmail.com";

	private static final String LOCALE_CODE = "no_NO";

	private static final String LANGUAGE_CODE = "no";

	private static final String COUNTRY_CODE = "NO";

	private static final String LOCALE_NAME = "Norwegian (Norway)";

	private static final String LOCALE_DESCRIPTION = "Norwegian (Norway)";

	//@InjectLogger 
	private static Logger logger = LoggerFactory.getLogger(PersistanceDaoTest.class);
	
	@Inject
	private PersistanceDao persistanceDao;
	
	@Test
	public void testCreateLocale()
	{
		try {
			LocaleBean localeBean = getLocale();
			persistanceDao.create(localeBean);
			
			assertNotNull(localeBean.getLocaleId());

		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}
	
	@Test
	public void testUpdateLocale()
	{
		try {
			LocaleBean localeBean = getLocale();
			persistanceDao.create(localeBean);
			
			Long localeId = localeBean.getLocaleId();
			assertNotNull(localeId);
			assertNull(localeBean.getDescription());
			
			localeBean.setDescription(LOCALE_DESCRIPTION);			
			persistanceDao.update(localeBean);

			LocaleBean localeBeanFromDB = (LocaleBean) persistanceDao.find(LocaleBean.class, localeId);
			assertNotNull(localeBeanFromDB);
			assertNotNull(localeBeanFromDB.getDescription());
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}
	
	@Test
	public void testDeleteLocaleByID()
	{
		Long localeId = null;
		try {
			LocaleBean localeBean = getLocale();
			persistanceDao.create(localeBean);
			
			localeId = localeBean.getLocaleId();
			assertNotNull(localeId);
			
			persistanceDao.delete(LocaleBean.class, localeId);
			

		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
		
		try {
			persistanceDao.find(LocaleBean.class, localeId);
		} catch (RecordNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}	
	
	@Test
	public void testDeleteLocaleByObject()
	{
		Long localeId = null;
		try {
			LocaleBean localeBean = getLocale();
			persistanceDao.create(localeBean);
			
			localeId = localeBean.getLocaleId();
			assertNotNull(localeId);
			
			persistanceDao.delete(localeBean);
			

		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
		
		try {
			persistanceDao.find(LocaleBean.class, localeId);
		} catch (RecordNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}		

	}		

	/**
	 * @return
	 */
	private LocaleBean getLocale() {
		LocaleBean localeBean = new LocaleBean();
		localeBean.setLocaleCode(LOCALE_CODE);
		localeBean.setLanguageCode(LANGUAGE_CODE);
		localeBean.setCountryCode(COUNTRY_CODE);
		localeBean.setName(LOCALE_NAME);
		localeBean.setCreatedDate(Calendar.getInstance());
		localeBean.setUpdatedDate(Calendar.getInstance());
		return localeBean;
	}
}
