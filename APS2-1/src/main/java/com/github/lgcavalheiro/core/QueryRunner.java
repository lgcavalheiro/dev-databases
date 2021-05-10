package com.github.lgcavalheiro.core;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.github.lgcavalheiro.database.Connector;
import com.github.lgcavalheiro.model.Pessoa;

public abstract class QueryRunner {
    private static Connection conn = null;
    private static PreparedStatement statement = null;
    private static ResultSet resultSet = null;
    private static final List<String> pessoaColumns = Arrays.asList("nome", "email", "cpf", "telefone", "sexo",
            "datanascimento");
    private static final List<String> validSexo = Arrays.asList("m", "f");

    private QueryRunner() {
    }

    private static void initializeStatement(String query) throws SQLException {
        conn = Connector.getConnection();
        statement = conn.prepareStatement(query);
    }

    private static boolean validateFieldValue(String field, String value) throws ParseException {
        boolean isValid = false;
        switch (field) {
            case "datanascimento":
                try {
                    DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    sdf.setLenient(false);
                    sdf.parse(value);
                    isValid = true;
                } catch (Exception e) {
                    isValid = false;
                }
                break;
            case "sexo":
                if (validSexo.contains(value.toLowerCase()))
                    isValid = true;
                break;
            default:
                isValid = true;
                break;
        }
        return isValid;
    }

    private static void setStatementValues(String input) throws SQLException {
        statement.setString(1, input);
    }

    private static void setStatementValues(String... values) throws Exception {
        if (validateFieldValue(values[0], values[1])) {
            statement.setString(1, values[1]);
            statement.setString(2, values[2]);
        } else
            throw new Exception("Field value invalid!");
    }

    private static void setStatementValues(Map<String, String> input) throws Exception {
        for (Entry<String, String> e : input.entrySet()) {
            if (validateFieldValue(e.getKey(), e.getValue())) {
                statement.setString(pessoaColumns.indexOf(e.getKey()) + 1, e.getValue());
            } else {
                throw new Exception(
                        "Validation failed for field: " + e.getKey() + "\n Value provided was: " + e.getValue());
            }
        }
    }

    private static Pessoa buildPessoa() throws SQLException, ParseException {
        return new Pessoa(resultSet.getString("nome"), resultSet.getString("email"), resultSet.getString("cpf"),
                resultSet.getString("telefone"), resultSet.getString("sexo").charAt(0),
                new SimpleDateFormat("yyyy-MM-dd").parse(resultSet.getString("datanascimento")));
    }

    private static void resetState() throws SQLException {
        if (resultSet != null)
            resultSet.close();
        if (statement != null)
            statement.close();
        if (conn != null)
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

    public static int insert(Map<String, String> input) throws Exception {
        initializeStatement(
                "INSERT INTO pessoa (nome, email, cpf, telefone, sexo, datanascimento) VALUES (?,?,?,?,?,?);");
        setStatementValues(input);
        int rowsAffected = statement.executeUpdate();
        resetState();
        return rowsAffected;
    }

    public static int delete(String cpf) throws SQLException, ParseException {
        initializeStatement("DELETE FROM pessoa WHERE cpf = ?;");
        setStatementValues(cpf);
        int rowsAffected = statement.executeUpdate();
        resetState();
        return rowsAffected;
    }

    public static int update(String field, String value, String cpf) throws Exception {
        if (pessoaColumns.contains(field)) {
            initializeStatement(String.format("UPDATE pessoa SET %s = ? WHERE cpf = ?;", field));
            setStatementValues(field, value, cpf);
            int rowsAffected = statement.executeUpdate();
            resetState();
            return rowsAffected;
        } else {
            resetState();
            throw new Exception("Invalid field supplied: " + field + "\nValid fields are: " + pessoaColumns.toString());
        }

    }

}
