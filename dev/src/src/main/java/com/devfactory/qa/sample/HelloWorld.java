package com.devfactory.qa.sample;

//Basic simple only product Class
//Always returns the string  "Hello  World"

public class HelloWorld {

  private String sampleVar;

  public String getSampleVar() {
    return sampleVar;
  }

  public void setSampleVar(String sampleVar) {
    this.sampleVar = sampleVar;
  }

  public String printHelloWorld() {
    return "HelloWorld";
  }

}