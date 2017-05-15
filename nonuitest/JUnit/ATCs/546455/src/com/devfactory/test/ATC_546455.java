package com.devfactory.test;

import java.util.Map;
import java.util.logging.Logger;
import java.lang.NullPointerException;

import com.devfactory.qa.sample.HelloWorld;
import com.devfactory.test.JUnitQASampleTestBase;
import com.devfactory.test.jdbc.validator.Restrictions;

public class ATC_546455 extends JUnitQASampleTestBase {
	
	/**
	Testrail url (hold ctrl to identify with eclipse): https://testrail.devfactory.com/index.php?/cases/view/546454
	Author : Sowmya Swaminathan
	*/

	@Override
	protected void prepare(Map<String, String> data) throws Exception {
		getLogger().info("Preparing environment");
		super.prepare(data);
 	}

	@Override
	protected void conclude(Map<String, String> data) throws Exception {
		super.conclude(data);
		getLogger().info("Cleaning environment");
	}

	@Override
	protected void execute(Map<String, String> data) throws Exception {
		getLogger().info("Testing QAProductPreCondition.testQAProductPreCondition");
		testQAProductPreCondition();
	}
	
	public void testQAProductPreCondition() {
		// Junit test invocation
		getLogger().info("Initializing Precondition");
		//HelloWorld helloWorldObj = new HelloWorld();
		getLogger().info("Failure Precondition");
		//String result = helloWorldObj.printHelloWorld();
		
		getLogger().info("Precondition going to return False");
    	// Conclusion
    	
		//Raise Exception to make test Error
		//throw new NullPointerException();
		criteria.add(Restrictions.eq("'New Junit test QAProductPreCondition.testQAProductPreCondition1'",true));
		valueMap.put("'New Junit test QAProductPreCondition.testQAProductPreCondition1'",true);
		
		criteria.add(Restrictions.eq("'New Junit test QAProductPreCondition.testQAProductPreCondition2'",true));
		valueMap.put("'New Junit test QAProductPreCondition.testQAProductPreCondition2'",true);
		
		criteria.add(Restrictions.eq("'New Junit test QAProductPreCondition.testQAProductPreCondition3'",true));
		valueMap.put("'New Junit test QAProductPreCondition.testQAProductPreCondition3'",true);
		
		criteria.add(Restrictions.eq("'New Junit test QAProductPreCondition.testQAProductPreCondition'",true));
		valueMap.put("'New Junit test QAProductPreCondition.testQAProductPreCondition'",true);
	}
}
