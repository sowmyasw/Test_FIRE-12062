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

  @Test
  public void testHelloWorldNegative() {
    HelloWorld hw = new HelloWorld();
    assertNotEquals("String returned is HelloWorld But I have to fail the test",
        hw.printHelloWorld(), "HelloWorld");
  }
  
  @Test
  public void testHelloWorldExercise(){
    HelloWorld hw = new HelloWorld();
    String response = hw.printHelloWorld();
    System.out.println("The response is: " + response);
  }

}
