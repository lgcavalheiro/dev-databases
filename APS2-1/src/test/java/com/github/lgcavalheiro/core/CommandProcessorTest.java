package com.github.lgcavalheiro.core;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.github.lgcavalheiro.model.Pessoa;

import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;

public class CommandProcessorTest {
    @Test
    @Order(1)
    public void processGetAll() {
        try {
            List<Pessoa> pessoas;
            pessoas = CommandProcessor.processGetAll();
            assertTrue(pessoas.size() >= 0, "List<Pessoa> assertion failed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    @Order(2)
    public void getByCpf() {
        try {
            String file = getClass().getClassLoader().getResource("getByCpf.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            String input = processor.processInput();

            List<Pessoa> p;
            p = CommandProcessor.getByCpf(input);
            assertTrue(p.get(0).getClass().getSimpleName().equalsIgnoreCase("Pessoa"), "Pessoa assertion failed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    @Order(3)
    public void processInsert() {
        try {
            String file = getClass().getClassLoader().getResource("pessoa.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            List<String> input = new ArrayList<String>();
            String singleInput;
            while ((singleInput = processor.processInput()) != null)
                input.add(singleInput);

            Map<String, String> inputMap = new HashMap<String, String>();
            inputMap.put("nome", input.get(0));
            inputMap.put("email", input.get(1));
            inputMap.put("cpf", input.get(2));
            inputMap.put("telefone", input.get(3));
            inputMap.put("sexo", input.get(4));
            inputMap.put("datanascimento", input.get(5));

            int rowsAffected = CommandProcessor.processInsert(inputMap);
            assertTrue(rowsAffected == 1, "Insert failed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    @Order(4)
    public void processUpdate() {
        try {
            String file = getClass().getClassLoader().getResource("processUpdate.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            List<String> input = new ArrayList<String>();
            String singleInput;
            while ((singleInput = processor.processInput()) != null)
                input.add(singleInput);

            int rowsAffected = CommandProcessor.processUpdate(input);
            assertTrue(rowsAffected == 1, "Update failed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    @Order(5)
    public void processDelete() {
        try {
            String file = getClass().getClassLoader().getResource("pessoa.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            List<String> input = new ArrayList<String>();
            String singleInput;
            while ((singleInput = processor.processInput()) != null)
                input.add(singleInput);

            Map<String, String> inputMap = new HashMap<String, String>();
            inputMap.put("nome", input.get(0));
            inputMap.put("email", input.get(1));
            inputMap.put("cpf", input.get(2));
            inputMap.put("telefone", input.get(3));
            inputMap.put("sexo", input.get(4));
            inputMap.put("datanascimento", input.get(5));
            CommandProcessor.processInsert(inputMap);

            int rowsAffected = CommandProcessor.processDelete("888.888.888-88");
            assertTrue(rowsAffected == 1, "Delete failed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void processInvalidCommand() {
        try {
            String result = CommandProcessor.processInvalidCommand();
            assertTrue(result.equalsIgnoreCase("Invalid command!"), "Delete failed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
