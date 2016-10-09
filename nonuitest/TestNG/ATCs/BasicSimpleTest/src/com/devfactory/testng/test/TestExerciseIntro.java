package com.devfactory.testng.test;

import org.testng.annotations.Test;
import org.testng.Assert;
import org.testng.annotations.Test;

import com.devfactory.qa.sample.HelloWorld;

public class TestExerciseIntro {
	
	@Test
	   public void testPositiveHelloWorld() {
		HelloWorld helloWorldObj = new HelloWorld();
		
		String result = helloWorldObj.printHelloWorld();
		
	   }
}
