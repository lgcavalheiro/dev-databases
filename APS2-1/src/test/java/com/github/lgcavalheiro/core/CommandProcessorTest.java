package com.github.lgcavalheiro.core;

import static org.junit.Assert.assertTrue;

import java.util.List;

import com.github.lgcavalheiro.model.Pessoa;

import org.junit.Test;

public class CommandProcessorTest {
    @Test
    public void processGetAll() {
        List<Pessoa> pessoas = CommandProcessor.processCommand("getall");
        assertTrue("List<Pessoa> assertion failed!", pessoas.size() >= 0);
    }

    @Test
    public void processInsert() {
        int rowsAffected = CommandProcessor.processCommand("insert");
        assertTrue("Insert failed! Rows affected was: " + rowsAffected, rowsAffected == 1);
    }

    @Test
    public void processUpdate() {
        int rowsAffected = CommandProcessor.processCommand("update");
        assertTrue("No rows were affected! Rows affected was: " + rowsAffected, rowsAffected == 1);
    }

    @Test
    public void processGetOne() {
        Pessoa p = CommandProcessor.processCommand("getone");
        assertTrue("Pessoa assertion failed!", p.getClass().getSimpleName().equalsIgnoreCase("Pessoa"));
    }

    @Test
    public void processDelete() {
        int rowsAffected = CommandProcessor.processCommand("delete");
        assertTrue("Delete statement failed! Rows affected was: " + rowsAffected, rowsAffected == 1);
    }

    @Test
    public void processInvalidCommand() {
        String response = CommandProcessor.processCommand("invalidCommand");
        assertTrue("Command was not propperly treated!", response.equalsIgnoreCase("Invalid command!"));
    }
}
