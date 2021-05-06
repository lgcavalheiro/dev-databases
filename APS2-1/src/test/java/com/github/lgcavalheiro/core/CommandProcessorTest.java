package com.github.lgcavalheiro.core;

import static org.junit.Assert.assertTrue;

import java.io.FileReader;
import java.util.ArrayList;
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
    public void getByCpf() {
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

    @Test
    public void processUpdate() {
        try {
            String file = getClass().getClassLoader().getResource("processUpdate.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            List<String> input = new ArrayList<String>();
            String singleInput;
            while ((singleInput = processor.processInput()) != null)
                input.add(singleInput);

            int rowsAffected = CommandProcessor.processUpdate(input);
            assertTrue("Update failed!", rowsAffected == 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void processInsert() {
        try {
            String file = getClass().getClassLoader().getResource("pessoa.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            List<String> input = new ArrayList<String>();
            String singleInput;
            while ((singleInput = processor.processInput()) != null)
                input.add(singleInput);

            int rowsAffected = CommandProcessor.processInsert(input);
            assertTrue("Insert failed!", rowsAffected == 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void processDelete() {
        try {
            int rowsAffected = CommandProcessor.processDelete("888.888.888-88");
            assertTrue("Delete failed!", rowsAffected == 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void processInvalidCommand() {
        try {
            String result = CommandProcessor.processInvalidCommand();
            assertTrue("Delete failed!", result.equalsIgnoreCase("Invalid command!"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
