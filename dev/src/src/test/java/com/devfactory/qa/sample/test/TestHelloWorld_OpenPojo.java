package com.devfactory.qa.sample.test;


import com.devfactory.qa.sample.HelloWorld;
import com.openpojo.reflection.PojoClass;
import com.openpojo.reflection.impl.PojoClassFactory;
import com.openpojo.validation.PojoValidator;
import org.junit.Test;

public class TestHelloWorld_OpenPojo {
  @Test
  public void testHelloWorld(){


    PojoClass personPojo = PojoClassFactory.getPojoClass(HelloWorld.class);

    PojoValidator pojoValidator = new PojoValidator();

    //pojoValidator.addRule(new SetterMustExistRule());
    //pojoValidator.addRule(new GetterMustExistRule());

    pojoValidator.runValidation(personPojo);

  }

}
