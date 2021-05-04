package com.github.lgcavalheiro.database;

import static org.junit.Assert.assertTrue;

import java.sql.Connection;

import org.junit.Test;

public class ConnectorTest {
    @Test
    public void TestConnection() {
        Connection conn = null;
        try {
            conn = Connector.getConnection();
            assertTrue("Invalid connection!", conn.isValid(8));
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
