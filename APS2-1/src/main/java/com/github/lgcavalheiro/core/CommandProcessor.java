package com.github.lgcavalheiro.core;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

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
}
