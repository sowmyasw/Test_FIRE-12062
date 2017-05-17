package com.devfactory.qa.sample.test;


import com.devfactory.qa.sample.HelloWorld;
import com.openpojo.reflection.PojoClass;
import com.openpojo.reflection.impl.PojoClassFactory;
import com.openpojo.validation.PojoValidator;
import com.openpojo.validation.rule.impl.GetterMustExistRule;
import com.openpojo.validation.rule.impl.SetterMustExistRule;
import com.openpojo.validation.test.impl.GetterTester;
import com.openpojo.validation.test.impl.SetterTester;
import org.junit.Test;

public class TestHelloWorld_OpenPojo {
  @Test
  public void testHelloWorld(){


    PojoClass personPojo = PojoClassFactory.getPojoClass(HelloWorld.class);

    PojoValidator pojoValidator = new PojoValidator();

    pojoValidator.addRule(new SetterMustExistRule());
    pojoValidator.addRule(new GetterMustExistRule());

    pojoValidator.addTester(new SetterTester());
    pojoValidator.addTester(new GetterTester());

    pojoValidator.runValidation(personPojo);

  }

}
