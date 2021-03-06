package com.github.lgcavalheiro.database;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.sql.Connection;

import org.junit.jupiter.api.Test;

public class ConnectorTest {
    @Test
    public void TestConnection() {
        Connection conn = null;
        try {
            conn = Connector.getConnection();
            assertTrue(conn.isValid(8), "Invalid connection!");
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void shouldCreateDatabase() {
        try {
            Connector.initiateDatabase();
        } catch (Exception e) {
            e.printStackTrace();
            fail("Should not throw an exception!");
        }
    }
}
