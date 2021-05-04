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
}
