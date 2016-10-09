package com.devfactory.test;

import java.util.Map;

import com.devfactory.qa.sample.HelloWorld;
import com.devfactory.test.JUnitQASampleTestBase;
import com.devfactory.test.jdbc.validator.Restrictions;

public class ATC_536708 extends JUnitQASampleTestBase {
	
	/**
	Testrail url (hold ctrl to identify with eclipse): https://testrail.devfactory.com/index.php?/cases/view/536708
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
		getLogger().info("Testing QAProductHelloWorld.testPrintHelloWorld");
		testPrintHelloWorld();
	}
	
	public void testPrintHelloWorld() {
		
		getLogger().info("Initializing HelloWorld");
		HelloWorld helloWorldObj = new HelloWorld();
		getLogger().info("Calling printHelloWorld()");
		String result = helloWorldObj.printHelloWorld();
		
		getLogger().info("HelloWorld returned: " + result);
		
		criteria.add(Restrictions.eq("'JUnit test QAProductHelloWorld.testPrintHelloWorld executed successfully'",true));
		valueMap.put("'JUnit test QAProductHelloWorld.testPrintHelloWorld executed successfully'", true);
	}
}
