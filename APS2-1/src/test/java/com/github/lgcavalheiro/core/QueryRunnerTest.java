package com.github.lgcavalheiro.core;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

import com.github.lgcavalheiro.model.Pessoa;

import org.junit.Test;

public class QueryRunnerTest {
    @Test
    public void getAll() {
        try {
            List<Pessoa> pessoas;
            pessoas = QueryRunner.getAll();
            assertTrue("Invalid return!", pessoas.size() > 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void getByCpf() {
        try {
            List<Pessoa> p;
            p = QueryRunner.getByCpf("999.999.999-99");
            assertTrue("Invalid return!", p.get(0).getCpf().equalsIgnoreCase("999.999.999-99"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void insert() {
        try {
            String file = getClass().getClassLoader().getResource("pessoa.txt").getFile();
            InputProcessor processor = new InputProcessor(new FileReader(file));
            List<String> input = new ArrayList<String>();
            String singleInput;
            while ((singleInput = processor.processInput()) != null)
                input.add(singleInput);

            int rowsAffected = QueryRunner.insert(input);
            assertTrue("Insert failed!", rowsAffected == 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void update() {
        try {
            String email = "new_email@email.com";
            int rowsAffected = QueryRunner.update("email", email, "888.888.888-88");
            List<Pessoa> p = QueryRunner.getByCpf("888.888.888-88");
            assertTrue("Update failed!", rowsAffected > 0 && p.get(0).getEmail().equalsIgnoreCase(email));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void updateAvoidSQlInjection() {
        try {
            QueryRunner.update(";DROP TABLE pessoa;", "new_email@email.com", "888.888.888-88");
            fail("SQLInjection was not prevented!");
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    public void delete() {
        try {
            int rowsAffected = QueryRunner.delete("888.888.888-88");
            assertTrue("Delete failed!", rowsAffected > 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
