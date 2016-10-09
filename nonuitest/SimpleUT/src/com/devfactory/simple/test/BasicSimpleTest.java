package com.devfactory.simple.test;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Assert;

public class BasicSimpleTest {
	@Test
	   public void dummyTest1() {
	      String str = "TestNG is working fine";
	      assertEquals("TestNG is working fine", str);
	   }
}
