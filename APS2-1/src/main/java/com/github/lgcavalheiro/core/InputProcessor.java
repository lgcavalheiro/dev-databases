package com.github.lgcavalheiro.core;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;

public class InputProcessor {
    BufferedReader reader;

    public InputProcessor(Reader reader) {
        this.reader = new BufferedReader(reader);
    }

    public String processInput() throws IOException {
        return reader.readLine();
    }
}
