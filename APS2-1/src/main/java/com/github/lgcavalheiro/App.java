package com.github.lgcavalheiro;

import java.io.InputStreamReader;
import java.util.List;

import com.github.lgcavalheiro.core.CommandProcessor;
import com.github.lgcavalheiro.core.InputProcessor;
import com.github.lgcavalheiro.database.Connector;
import com.github.lgcavalheiro.model.Pessoa;

public abstract class App {
    private App() {
    }

    public static void main(String[] args) {
        try {
            Connector.initiateDatabase();
            List<Pessoa> pessoas = null;

            InputProcessor processor = new InputProcessor(new InputStreamReader(System.in));
            System.out.println("Select command:\n-getall\n-getone");
            String input = processor.processInput();

            switch (input.toLowerCase()) {
                case "getall":
                    pessoas = CommandProcessor.processGetAll();
                    System.out.println(pessoas);
                    break;
                case "getone":
                    System.out.println("Define CPF:");
                    input = processor.processInput();
                    pessoas = CommandProcessor.getByCpf(input);
                    System.out.println(pessoas);
                    break;
                case "update":
                    break;
                case "insert":
                    break;
                case "delete":
                    break;
                default:
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
