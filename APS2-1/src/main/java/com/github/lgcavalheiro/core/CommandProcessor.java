package com.github.lgcavalheiro.core;

import com.github.lgcavalheiro.model.Pessoa;

import java.util.ArrayList;

public abstract class CommandProcessor {
    private CommandProcessor() {
    }

    @SuppressWarnings("unchecked")
    public static <T> T processCommand(String command) {
        return (T) new ArrayList<Pessoa>();
    }
}
