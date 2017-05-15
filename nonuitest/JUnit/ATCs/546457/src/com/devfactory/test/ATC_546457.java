package com.devfactory.test;

import java.util.Map;
import java.util.logging.Logger;

import com.devfactory.qa.sample.HelloWorld;
import com.devfactory.test.JUnitQASampleTestBase;
import com.devfactory.test.jdbc.validator.Restrictions;

public class ATC_546457 extends JUnitQASampleTestBase {
	
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
    	//
		criteria.add(Restrictions.eq("'New Junit test QAProductPreCondition.testQAProductPreCondition'",true));
		valueMap.put("'New Junit test QAProductPreCondition.testQAProductPreCondition'",true);		
	}
}
