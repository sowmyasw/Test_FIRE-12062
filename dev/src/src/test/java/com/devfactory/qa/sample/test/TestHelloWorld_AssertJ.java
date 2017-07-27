package com.devfactory.qa.sample.test;


import static org.assertj.core.api.Assertions.assertThat;

import com.devfactory.qa.sample.HelloWorld;
import org.junit.Test;

public class TestHelloWorld_AssertJ {

    @Test
    public void testPositiveHelloWorld() {
        HelloWorld helloWorldObj = new HelloWorld();

        String result = helloWorldObj.printHelloWorld();

        assertThat(result).isNotNull();

        assertThat(result).isSameAs("HelloWorld");
    }
}
