package com.devfactory.qa.sample.test;

import com.devfactory.qa.sample.HelloWorld;
import org.junit.Test;

public class TestHelloWorld_Exercise {

  @Test
  public void testHelloWorldExercise(){
    HelloWorld hw = new HelloWorld();
    String response = hw.printHelloWorld();
    System.out.println("The response is: " + response);
  }

}
