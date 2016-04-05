/**
 * 
 */
package com.rsinc.webretail.b2c.estore.test;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import com.rsinc.webretail.b2c.estore.common.email.MailManagerTest;
import com.rsinc.webretail.b2c.estore.data.dao.PersistanceDaoTest;
import com.rsinc.webretail.b2c.estore.data.entity.manager.CategoryEntityManagerTest;
import com.rsinc.webretail.b2c.estore.data.entity.manager.CityEntityManagerTest;
import com.rsinc.webretail.b2c.estore.data.entity.manager.CountryEntityManagerTest;
import com.rsinc.webretail.b2c.estore.data.entity.manager.CurrencyEntityManagerTest;
import com.rsinc.webretail.b2c.estore.data.entity.manager.LocaleEntityManagerTest;
import com.rsinc.webretail.b2c.estore.data.entity.manager.StateEntityManagerTest;
import com.rsinc.webretail.b2c.estore.data.entity.manager.UserEntityManagerTest;

/**
 * @author Roshan Titus
 *
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({
	PersistanceDaoTest.class,
	//QueryDaoTest.class,
	UserEntityManagerTest.class,
	CategoryEntityManagerTest.class,
	CountryEntityManagerTest.class,
	StateEntityManagerTest.class,
	CityEntityManagerTest.class,
	LocaleEntityManagerTest.class,
	CurrencyEntityManagerTest.class,
	MailManagerTest.class
})
public class CommonsTestSuite {

}
