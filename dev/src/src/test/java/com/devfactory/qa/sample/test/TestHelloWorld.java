package com.devfactory.qa.sample.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import com.devfactory.qa.sample.HelloWorld;
import org.junit.Test;


public class TestHelloWorld {

  @Test
  public void testHelloWorldPositive(){
    HelloWorld hw = new HelloWorld();
    assertEquals("String returned is not HelloWorld", hw.printHelloWorld(), "HelloWorld");
  }
}
