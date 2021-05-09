package com.github.lgcavalheiro;

import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.github.lgcavalheiro.core.CommandProcessor;
import com.github.lgcavalheiro.core.InputProcessor;
import com.github.lgcavalheiro.database.Connector;
import com.github.lgcavalheiro.model.Pessoa;

public abstract class App {
    private App() {
    }

    public static void main(String[] args) throws Exception {
        Connector.initiateDatabase();

        String input = null;
        int rowsAffected = 0;
        List<Pessoa> pessoas = null;
        boolean shouldContinue = true;
        List<String> inputList = new ArrayList<String>();
        Map<String, String> inputMap = new HashMap<String, String>();

        InputProcessor processor = new InputProcessor(new InputStreamReader(System.in));

        while (shouldContinue) {
            try {
                input = processor.processInput("Select command by typing:", "-getall (gets all pessoas from database)",
                        "-getone (gets pessoas from database by CPF)", "-update (updates one field by CPF)",
                        "-delete (deletes pessoas by CPF)", "-insert (inserts new pessoa into database)");
                switch (input.toLowerCase()) {
                    case "getall":
                        pessoas = CommandProcessor.processGetAll();
                        System.out.println("All data from database:");
                        for (Pessoa p : pessoas)
                            System.out.println(p);
                        break;
                    case "getone":
                        input = processor.processInput("Define CPF:");
                        pessoas = CommandProcessor.getByCpf(input);
                        System.out.println("Found these results:");
                        for (Pessoa p : pessoas)
                            System.out.println(p);
                        break;
                    case "update":
                        inputList.clear();
                        for (String text : Arrays.asList(
                                "Define FIELD, options are:\nnome, email, cpf, telefone, sexo, datanascimento",
                                "Define new value:", "Define CPF:"))
                            inputList.add(processor.processInput(text));
                        rowsAffected = CommandProcessor.processUpdate(inputList);
                        System.out.println("Updated this amount of lines: " + rowsAffected);
                        break;
                    case "insert":
                        inputMap.clear();
                        inputMap.put("nome", processor.processInput("Define NAME:"));
                        inputMap.put("email", processor.processInput("Define EMAIL:"));
                        inputMap.put("cpf", processor.processInput("Define CPF:"));
                        inputMap.put("telefone", processor.processInput("Define TELEFONE:"));
                        inputMap.put("sexo", processor.processInput("Define SEXO ('m' or 'f'):"));
                        inputMap.put("datanascimento",
                                processor.processInput("Define DATA_NASCIMENTO (format is yyyy-mm-dd):"));
                        rowsAffected = CommandProcessor.processInsert(inputMap);
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
            } catch (Exception e) {
                System.out.println("An exception occured: " + e.getMessage());
                System.out.println("Cause was: " + e.getCause());
                e.printStackTrace();
            } finally {
                input = processor.processInput("Run annother command? [Y/n]");
                shouldContinue = input.equalsIgnoreCase("n") ? false : true;
            }
        }
    }
}
