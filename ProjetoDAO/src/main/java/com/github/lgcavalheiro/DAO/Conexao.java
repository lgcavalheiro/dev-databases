/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.lgcavalheiro.DAO;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author antoniopodgorski
 */
public class Conexao {

    // DROP SCHEMA IF EXISTS escola;
    // CREATE SCHEMA escola;
    // USE escola;
    // DROP TABLE IF EXISTS `aluno`;
    // CREATE TABLE aluno
    // (
    // id int NOT NULL,
    // nome varchar(255),
    // cpf varchar(255),
    // PRIMARY KEY (id)
    // );

    // private String URL = "jdbc:mysql://localhost:3306/escola";
    // private String USER = "root";
    // private String SENHA = "";
    private Connection conn;

    public Conexao() throws SQLException {
        try {
            Properties props = getProperties();
            // conn = (Connection) DriverManager.getConnection(URL, USER, SENHA);
            conn = (Connection) DriverManager.getConnection(props.getProperty("url"), props.getProperty("user"),
                    props.getProperty("password"));
        } catch (SQLException e) {
            throw e;
        }
    }

    private Properties getProperties() {
        Properties props = new Properties();
        try (FileInputStream fs = new FileInputStream(
                getClass().getClassLoader().getResource("db.properties").getFile())) {
            props.load(fs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return props;
    }

    public Connection getConn() {
        return conn;
    }

    public void fecharConexao() throws SQLException {
        try {
            conn.close();
        } catch (SQLException e) {
            throw e;
        }
    }
}
