package com.devfactory.qa.sample.test;

import com.devfactory.qa.sample.HelloWorld;
import org.junit.Test;
import org.testng.Assert;


public class TestHelloWorld_TestNg {

  @Test
  public void testPositiveHelloWorld() {
    HelloWorld helloWorldObj = new HelloWorld();

    String result = helloWorldObj.printHelloWorld();

    Assert.assertNotNull(result);

    Assert.assertEquals("HelloWorld", result);
  }

}
