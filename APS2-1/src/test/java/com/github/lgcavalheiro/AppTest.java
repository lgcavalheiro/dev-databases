package com.github.lgcavalheiro;

import static org.junit.jupiter.api.Assertions.fail;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;

public class AppTest {
    @Test
    @Order(1)
    public void inputGetAll() {
        try {
            String file = getClass().getClassLoader().getResource("inputGetAll.txt").getFile();

            final InputStream original = System.in;
            final FileInputStream fips = new FileInputStream(new File(file));

            System.setIn(fips);
            App.main(null);
            System.setIn(original);
        } catch (Exception e) {
            e.printStackTrace();
            fail("Exception happened!");
        }
    }

    @Test
    @Order(2)
    public void inputGetOne() {
        try {
            String file = getClass().getClassLoader().getResource("inputGetOne.txt").getFile();

            final InputStream original = System.in;
            final FileInputStream fips = new FileInputStream(new File(file));

            System.setIn(fips);
            App.main(null);
            System.setIn(original);
        } catch (Exception e) {
            e.printStackTrace();
            fail("Exception happened!");
        }
    }

    @Test
    @Order(3)
    public void inputInsert() {
        try {
            String file = getClass().getClassLoader().getResource("inputInsert.txt").getFile();

            final InputStream original = System.in;
            final FileInputStream fips = new FileInputStream(new File(file));

            System.setIn(fips);
            App.main(null);
            System.setIn(original);
        } catch (Exception e) {
            e.printStackTrace();
            fail("Exception happened!");
        }
    }

    @Test
    @Order(4)
    public void inputUpdate() {
        try {
            String file = getClass().getClassLoader().getResource("inputUpdate.txt").getFile();

            final InputStream original = System.in;
            final FileInputStream fips = new FileInputStream(new File(file));

            System.setIn(fips);
            App.main(null);
            System.setIn(original);
        } catch (Exception e) {
            e.printStackTrace();
            fail("Exception happened!");
        }
    }

    @Test
    @Order(5)
    public void inputDelete() {
        try {
            String file = getClass().getClassLoader().getResource("inputDelete.txt").getFile();

            final InputStream original = System.in;
            final FileInputStream fips = new FileInputStream(new File(file));

            System.setIn(fips);
            App.main(null);
            System.setIn(original);
        } catch (Exception e) {
            e.printStackTrace();
            fail("Exception happened!");
        }
    }

    @Test
    public void inputInvalid() {
        try {
            String file = getClass().getClassLoader().getResource("inputInvalid.txt").getFile();

            final InputStream original = System.in;
            final FileInputStream fips = new FileInputStream(new File(file));

            System.setIn(fips);
            App.main(null);
            System.setIn(original);
        } catch (Exception e) {
            e.printStackTrace();
            fail("Exception happened!");
        }
    }
}
