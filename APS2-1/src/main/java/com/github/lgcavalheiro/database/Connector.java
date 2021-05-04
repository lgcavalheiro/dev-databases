package com.github.lgcavalheiro.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connector {
    private static final String DB = "jdbc:sqlite:aps2_1.db";

    public static Connection getConnection() {
        try {
            return DriverManager.getConnection(DB);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}