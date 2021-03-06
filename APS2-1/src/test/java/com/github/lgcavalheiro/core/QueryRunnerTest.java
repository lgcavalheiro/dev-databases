package com.github.lgcavalheiro.core;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.github.lgcavalheiro.model.Pessoa;

import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;

public class QueryRunnerTest {
    @Test
    @Order(1)
    public void getAll() {
        try {
            List<Pessoa> pessoas;
            pessoas = QueryRunner.getAll();
            assertTrue(pessoas.size() > 0, "Invalid return!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    @Order(2)
    public void getByCpf() {
        try {
            List<Pessoa> p;
            p = QueryRunner.getByCpf("999.999.999-99");
            assertTrue(p.get(0).getCpf().equalsIgnoreCase("999.999.999-99"), "Invalid return!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    @Order(3)
    public void insert() {
        try {
            String file = getClass().getClassLoader().getResource("pessoaQueryRunner.txt").getFile();
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

            int rowsAffected = QueryRunner.insert(inputMap);
            assertTrue(rowsAffected == 1, "Insert failed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    @Order(4)
    public void update() {
        try {
            String email = "new_email@email.com";
            int rowsAffected = QueryRunner.update("email", email, "777.777.777-77");
            List<Pessoa> p = QueryRunner.getByCpf("777.777.777-77");
            assertTrue(rowsAffected > 0 && p.get(0).getEmail().equalsIgnoreCase(email), "Update failed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    @Order(5)
    public void delete() {
        try {
            String file = getClass().getClassLoader().getResource("pessoaQueryRunner.txt").getFile();
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
            QueryRunner.insert(inputMap);

            int rowsAffected = QueryRunner.delete("777.777.777-77");
            assertTrue(rowsAffected > 0, "Delete failed!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void updateAvoidSQlInjection() {
        try {
            QueryRunner.update(";DROP TABLE pessoa;", "new_email@email.com", "777.777.777-77");
            fail("SQLInjection was not prevented!");
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    public void updateInvalidField() {
        try {
            QueryRunner.update("invalid-field", "new_email@email.com", "777.777.777-77");
            fail("Invalid field was accepted!");
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    public void insertInvalidDataNascimento() {
        try {
            String file = getClass().getClassLoader().getResource("pessoaQueryRunner.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            List<String> input = new ArrayList<String>();
            String singleInput;
            while ((singleInput = processor.processInput()) != null)
                input.add(singleInput);

            Map<String, String> inputMap = new HashMap<String, String>();
            inputMap.put("nome", input.get(0));
            inputMap.put("email", input.get(1));
            inputMap.put("cpf", "invalid-control-for-test");
            inputMap.put("telefone", input.get(3));
            inputMap.put("sexo", input.get(4));
            inputMap.put("datanascimento", "invalid-date");

            QueryRunner.insert(inputMap);
            fail("Datanascimento validation failed!");
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    public void insertInvalidSexo() {
        try {
            String file = getClass().getClassLoader().getResource("pessoaQueryRunner.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            List<String> input = new ArrayList<String>();
            String singleInput;
            while ((singleInput = processor.processInput()) != null)
                input.add(singleInput);

            Map<String, String> inputMap = new HashMap<String, String>();
            inputMap.put("nome", input.get(0));
            inputMap.put("email", input.get(1));
            inputMap.put("cpf", "invalid-control-for-test");
            inputMap.put("telefone", input.get(3));
            inputMap.put("sexo", "invalid-sexo");
            inputMap.put("datanascimento", input.get(5));

            QueryRunner.insert(inputMap);
            fail("Sexo validation failed!");
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    public void updateInvalidValue() {
        try {
            QueryRunner.update("datanascimento", "invalid", "777.777.777-77");
            fail("Invalid field was accepted!");
        } catch (Exception e) {
            assertTrue(true);
        }
    }
}
