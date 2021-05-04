package com.github.lgcavalheiro.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public abstract class Connector {
    private static final String DB = "jdbc:sqlite:aps2_1.db";

    private Connector() {
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB);
    }

    public static void initiateDatabase() throws SQLException {
        Connection conn = Connector.getConnection();
        String query = "CREATE TABLE IF NOT EXISTS pessoa( nome VARCHAR(40), email VARCHAR(80), cpf VARCHAR(14), telefone VARCHAR(30), sexo CHAR(1), datanascimento DATE);";
        Statement statement = conn.createStatement();
        statement.execute(query);
        conn.close();
    }
}