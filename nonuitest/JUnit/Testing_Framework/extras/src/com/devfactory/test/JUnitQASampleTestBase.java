package com.devfactory.test;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

//import com.devfactory.test.JUnitTestBase;
import com.devfactory.test.jdbc.validator.Criteria;
import com.devfactory.test.jdbc.validator.CriteriaType;
import com.devfactory.test.jdbc.validator.JdbcValidator;
import com.devfactory.test.jdbc.validator.Restrictions;

@SuppressWarnings("rawtypes")
public abstract class JUnitQASampleTestBase extends JUnitTestBase {
	
	public JUnitQASampleTestBase()
	{
		super(SKIP_CSV_VALIDATIONS);
	}
	
	public JUnitQASampleTestBase(String[] dataKeys) {
		super(dataKeys);
		// TODO Auto-generated constructor stub
	}
	

	/**
	 * Criteria instance to add validations at different phases of test case
	 */
	protected Criteria criteria = Criteria.createCriteria(CriteriaType.AND);
	
	/**
	 * Map containing key/value pair of values that has to be validated against
	 * the expected value.
	 */
	protected Map<String, Object> valueMap = new HashMap<String, Object>();
	
	
	protected void prepare(Map<String, String> data) throws Exception {
		
		setUp();
	}
	
	protected void setUp() throws Exception {
	}
	
	protected void tearDown() throws Exception {
	}
	
	
	protected void collect(Map<String, String> data) throws Exception {
	
	}

	@SuppressWarnings("unchecked")
	protected void validate(Map<String, String> data) throws Exception {
		// Validate the results
		getLogger().info("Performing validations on execution results");
		JdbcValidator.setAttributeName("Attribute");
		JdbcValidator.validateResults(valueMap, valueMap.size(), criteria);
		getLogger().info("Validations completed successfully.");
	}

	protected void conclude(Map<String, String> data) throws Exception {
		tearDown();
	}

	
}
