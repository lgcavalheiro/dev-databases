package com.github.lgcavalheiro.core;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import com.github.lgcavalheiro.model.Pessoa;

public abstract class CommandProcessor {
    private CommandProcessor() {
    }

    public static List<Pessoa> processGetAll() throws SQLException, ParseException {
        List<Pessoa> result = null;
        result = QueryRunner.getAll();
        return result;
    }

    public static List<Pessoa> getByCpf(String cpf) throws SQLException, ParseException {
        List<Pessoa> result = null;
        result = QueryRunner.getByCpf(cpf);
        return result;
    }

    public static int processUpdate(List<String> input) throws Exception {
        return QueryRunner.update(input.get(0), input.get(1), input.get(2));
    }

    public static int processInsert(Map<String, String> input) throws Exception {
        return QueryRunner.insert(input);
    }

    public static int processDelete(String input) throws SQLException, ParseException {
        return QueryRunner.delete(input);
    }

    public static String processInvalidCommand() {
        return "Invalid command!";
    }
}
