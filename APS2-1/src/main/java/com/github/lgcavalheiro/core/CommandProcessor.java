package com.github.lgcavalheiro.core;

import com.github.lgcavalheiro.model.Pessoa;

import java.util.ArrayList;

public abstract class CommandProcessor {
    private CommandProcessor() {
    }

    @SuppressWarnings("unchecked")
    public static <T> T processCommand(String command) {
        switch (command.toLowerCase()) {
            case "getall":
                return (T) new ArrayList<Pessoa>();
            case "getone":
                return (T) new Pessoa();
            case "update":
                return (T) (Integer) 1;
            case "insert":
                return (T) (Integer) 1;
            case "delete":
                return (T) (Integer) 1;
            default:
                return (T) "Invalid command!";
        }
    }
}
