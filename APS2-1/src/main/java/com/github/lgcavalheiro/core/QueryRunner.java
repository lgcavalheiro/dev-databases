package com.github.lgcavalheiro.core;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.github.lgcavalheiro.database.Connector;
import com.github.lgcavalheiro.model.Pessoa;

public abstract class QueryRunner {
    static Connection conn = null;
    static PreparedStatement statement = null;
    static ResultSet resultSet = null;

    private QueryRunner() {
    }

    private static void initializeStatement(String query) throws SQLException {
        conn = Connector.getConnection();
        statement = conn.prepareStatement(query);
    }

    private static void setStatementValues(String... values) throws SQLException {
        for (int i = 0; i < values.length; i++) {
            statement.setString(i + 1, values[i]);
        }
    }

    private static Pessoa buildPessoa() throws SQLException, ParseException {
        return new Pessoa(resultSet.getString("nome"), resultSet.getString("email"), resultSet.getString("cpf"),
                resultSet.getString("telefone"), resultSet.getString("sexo").charAt(0),
                new SimpleDateFormat("yyyy-MM-dd").parse(resultSet.getString("datanascimento")));
    }

    private static void resetState() throws SQLException {
        statement.close();
        resultSet.close();
        conn.close();
    }

    public static List<Pessoa> getAll() throws SQLException, ParseException {
        List<Pessoa> result = new ArrayList<Pessoa>();
        initializeStatement("SELECT nome, email, cpf, telefone, sexo, datanascimento FROM pessoa;");
        resultSet = statement.executeQuery();
        while (resultSet.next())
            result.add(buildPessoa());
        resetState();
        return result;
    }

    public static List<Pessoa> getByCpf(String cpf) throws SQLException, ParseException {
        List<Pessoa> result = new ArrayList<Pessoa>();
        initializeStatement("SELECT nome, email, cpf, telefone, sexo, datanascimento FROM pessoa WHERE cpf = ?;");
        setStatementValues(cpf);
        resultSet = statement.executeQuery();
        while (resultSet.next())
            result.add(buildPessoa());
        resetState();
        return result;
    }

}
