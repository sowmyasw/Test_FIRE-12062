package com.devfactory.qa.sample.test;

import org.junit.Test;

public class TestHelloWorld_ExceptionTest {

    @Test(expected = NullPointerException.class)
    public void testException() throws Exception {
        String nullString = null;
        nullString.length();
    }
}
