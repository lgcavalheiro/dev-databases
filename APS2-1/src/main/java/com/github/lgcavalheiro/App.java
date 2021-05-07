package com.github.lgcavalheiro;

import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import com.github.lgcavalheiro.core.CommandProcessor;
import com.github.lgcavalheiro.core.InputProcessor;
import com.github.lgcavalheiro.database.Connector;
import com.github.lgcavalheiro.model.Pessoa;

public abstract class App {
    private App() {
    }

    public static void main(String[] args) throws Exception {
        Connector.initiateDatabase();
        List<String> inputList = new ArrayList<String>();
        List<Pessoa> pessoas = null;
        int rowsAffected = 0;
        boolean shouldContinue = true;
        InputProcessor processor = new InputProcessor(new InputStreamReader(System.in));
        String input = null;

        while (shouldContinue) {
            input = processor.processInput("Select command:\n-getall\n-getone\n-update\n-delete\n-insert\n");
            switch (input.toLowerCase()) {
                case "getall":
                    pessoas = CommandProcessor.processGetAll();
                    System.out.println("All data from database:\n" + pessoas);
                    break;
                case "getone":
                    input = processor.processInput("Define CPF:");
                    pessoas = CommandProcessor.getByCpf(input);
                    System.out.println("Found these results:\n" + pessoas);
                    break;
                case "update":
                    inputList.clear();
                    inputList.add(processor.processInput("Define FIELD, options are:",
                            "nome, email, cpf, telefone, sexo, datanascimento"));
                    inputList.add(processor.processInput("Define new value:"));
                    inputList.add(processor.processInput("Define CPF:"));
                    rowsAffected = CommandProcessor.processUpdate(inputList);
                    System.out.println("Updated this amount of lines: " + rowsAffected);
                    break;
                case "insert":
                    inputList.clear();
                    inputList.add(processor.processInput("Define NAME:"));
                    inputList.add(processor.processInput("Define EMAIL:"));
                    inputList.add(processor.processInput("Define CPF:"));
                    inputList.add(processor.processInput("Define TELEFONE:"));
                    inputList.add(processor.processInput("Define SEXO:"));
                    inputList.add(processor.processInput("Define DATA_NASCIMENTO:"));
                    rowsAffected = CommandProcessor.processInsert(inputList);
                    System.out.println("Inserted: " + rowsAffected);
                    break;
                case "delete":
                    input = processor.processInput("Define CPF:");
                    rowsAffected = CommandProcessor.processDelete(input);
                    System.out.println("Deleted this amount of entries: " + rowsAffected);
                    break;
                default:
                    System.out.println(CommandProcessor.processInvalidCommand());
                    break;
            }
            input = processor.processInput("Run annother command? [Y/n]");
            shouldContinue = input.equalsIgnoreCase("n") ? false : true;
        }
    }

}
