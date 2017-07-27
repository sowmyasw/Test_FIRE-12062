package com.devfactory.qa.sample.test;


import com.devfactory.qa.sample.HelloWorld;
import com.openpojo.reflection.PojoClass;
import com.openpojo.reflection.impl.PojoClassFactory;
import com.openpojo.validation.Validator;
import com.openpojo.validation.ValidatorBuilder;
import com.openpojo.validation.rule.impl.GetterMustExistRule;
import com.openpojo.validation.rule.impl.SetterMustExistRule;
import org.junit.Test;

public class TestHelloWorld_OpenPojo {

    @Test
    public void testHelloWorld() {

        PojoClass helloWorldPojo = PojoClassFactory.getPojoClass(HelloWorld.class);

        Validator validator = ValidatorBuilder.create()
                .with(new GetterMustExistRule(), new SetterMustExistRule())
                .build();

        validator.validate(helloWorldPojo);
    }
}
