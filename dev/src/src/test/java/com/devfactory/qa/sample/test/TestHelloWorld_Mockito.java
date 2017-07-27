package com.devfactory.qa.sample.test;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import com.devfactory.qa.sample.HelloWorld;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

@RunWith(MockitoJUnitRunner.class)
public class TestHelloWorld_Mockito {

    @Mock
    private HelloWorld hw;

    @Before
    public void setUp() throws Exception {
        hw = mock(HelloWorld.class);
    }

    @Test
    public void testMockito() throws Exception {
        when(hw.printHelloWorld()).thenReturn("FirstTime").thenReturn("SecondTime");
        String resp1 = hw.printHelloWorld();
        String resp2 = hw.printHelloWorld();
        verify(hw, times(2)).printHelloWorld();
    }
}