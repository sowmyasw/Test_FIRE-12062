package com.devfactory.qa.sample;

import java.util.Date;
import java.lang.*;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

//Basic simple only product Class 
//Always returns the string  "Hello  World" 

public class HelloWorld{
    //public method to return hardcoded "HelloWorld" Stringsssssssddfad
	public static final String var="Dummy";
	private Date var2;
    public String printHelloWorld(){
		//To fire commit
        return "HelloWorld";
    }
	
	/*
	public void method2(Date input){
		this.var2 = input;
	}
	*/
	//
	public void M1()
	{
	
	}
	
	public void M2()
	{}
	
	public void M3()
	{
		return;
	}
	
	public void M4()
	{
		return;
	}
	
	public void M5(){}
	
	public void testNonBlocker(){
		try{
			List<String> list = new ArrayList<String>();
			Integer integer = Integer.valueOf(1);

			if (list.contains(integer)) { // Noncompliant. Always false.
			list.remove(integer); // Noncompliant. list.add(iger) doesn't compile, so this will always return false
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return;
	}
	
}
