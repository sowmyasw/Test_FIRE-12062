package com.devfactory.testng.test;

import org.testng.annotations.Test;
//-import org.testng.AssertJUnit;
import org.testng.Assert;
import org.testng.annotations.Test;
//import static org.testng.Assert.assertEquals;


import com.devfactory.qa.sample.HelloWorld;

public class TestHelloWorld {
	@Test
	   public void testPositiveHelloWorld() {
		HelloWorld helloWorldObj = new HelloWorld();
		
		String result = helloWorldObj.printHelloWorld();
		
		Assert.assertNotNull(result);
		
		Assert.assertEquals("HelloWorld", result);
	   }
}
