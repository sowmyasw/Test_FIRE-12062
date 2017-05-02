package com.devfactory.qa.sample.test;

import static org.junit.Assert.assertNotEquals;

import com.devfactory.qa.sample.HelloWorld;
import org.junit.Test;

public class TestHelloWorld_Negative {

  @Test
  public void testHelloWorldNegative() {
    HelloWorld hw = new HelloWorld();
    assertNotEquals("String returned is HelloWorld But I have to fail the test",
        hw.printHelloWorld(), "HelloWorld");
  }

}
