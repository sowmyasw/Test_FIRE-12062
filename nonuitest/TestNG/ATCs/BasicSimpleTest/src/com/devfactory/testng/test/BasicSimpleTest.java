package com.devfactory.testng.test;

import org.testng.annotations.Test;
import org.testng.Assert;
import org.testng.annotations.Test;

import com.devfactory.qa.sample.HelloWorld;

public class BasicSimpleTest {
	@Test
	   public void testAdd() {
	   //blahblah
	      String str = "TestNG is working fine";
	      Assert.assertEquals("TestNG is working fine", str);
	   }
}
