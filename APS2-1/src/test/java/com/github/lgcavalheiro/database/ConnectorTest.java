package com.github.lgcavalheiro.database;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

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
