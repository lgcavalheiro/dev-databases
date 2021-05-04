package com.github.lgcavalheiro;

import java.io.InputStreamReader;

import com.github.lgcavalheiro.core.CommandProcessor;
import com.github.lgcavalheiro.core.InputProcessor;
import com.github.lgcavalheiro.database.Connector;

public abstract class App {
    private App() {
    }

    public static void main(String[] args) {
        try {
            Connector.initiateDatabase();

            InputProcessor processor = new InputProcessor(new InputStreamReader(System.in));
            String input = processor.processInput();
            System.out.println("Command typed: " + input);
            CommandProcessor.processCommand(input);

            System.out.println("Hello");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
