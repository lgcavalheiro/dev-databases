package com.github.lgcavalheiro.core;

import static org.junit.Assert.assertTrue;

import java.io.FileReader;
import java.io.IOException;

import org.junit.Test;

public class InputProcessorTest {
    @Test
    public void canReadSystemInput() throws IOException {
        String file = getClass().getClassLoader().getResource("canReadSystemInput.txt").getFile();
        InputProcessor processor = new InputProcessor(new FileReader(file));
        String input = processor.processInput();
        assertTrue("Invalid input! ", input.equalsIgnoreCase("testinput"));
    }
}
