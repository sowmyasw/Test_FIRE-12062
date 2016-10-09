package com.devfactory.testng.test;

import org.testng.annotations.Test;
import org.testng.Assert;
import org.testng.annotations.Test;

import java.util.Date;

import com.devfactory.qa.sample.HelloWorld;

public class TestMethod2 {
	@Test
	   public void testPositiveMethod2() {
		Date var2 = new Date();
		HelloWorld helloWorldObj = new HelloWorld();
		
		String result=null;
		//helloWorldObj.method2(var2);
		helloWorldObj.M2();
		helloWorldObj.M1();
		helloWorldObj.M3();
		helloWorldObj.M4();
		
		//Assert.assertNull(result);
		
		//Assert.assertEquals("HelloWorld", result);
		Assert.fail("Introduce Fail UT");
	   }
}
