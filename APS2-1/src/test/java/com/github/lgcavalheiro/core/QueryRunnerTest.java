package com.github.lgcavalheiro.core;

import static org.junit.Assert.assertTrue;

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
}
