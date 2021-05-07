package com.github.lgcavalheiro.core;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.FileReader;
import java.io.IOException;

import org.junit.jupiter.api.Test;

public class InputProcessorTest {
    @Test
    public void canReadSystemInput() throws IOException {
        String file = getClass().getClassLoader().getResource("canReadSystemInput.txt").getFile();
        InputProcessor processor = new InputProcessor(new FileReader(file));
        String input = processor.processInput();
        assertTrue(input.equalsIgnoreCase("testinput"), "Invalid input!");
    }
}
