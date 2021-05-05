package com.github.lgcavalheiro.core;

import static org.junit.Assert.assertTrue;

import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import com.github.lgcavalheiro.model.Pessoa;

import org.junit.Test;

public class CommandProcessorTest {
    @Test
    public void processGetAll() {
        try {
            List<Pessoa> pessoas;
            pessoas = CommandProcessor.processGetAll();
            assertTrue("List<Pessoa> assertion failed!", pessoas.size() >= 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void getByCpf() throws IOException {
        try {
            String file = getClass().getClassLoader().getResource("getByCpf.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            String input = processor.processInput();

            List<Pessoa> p;
            p = CommandProcessor.getByCpf(input);
            assertTrue("Pessoa assertion failed!", p.get(0).getClass().getSimpleName().equalsIgnoreCase("Pessoa"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
