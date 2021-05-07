package com.github.lgcavalheiro.model;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.Date;

import org.junit.jupiter.api.Test;

public class PessoaTest {
    private static Date data = new Date();
    private static String nome = "Nome Teste";
    private static String email = "test@email.com";
    private static String cpf = "123.456.789-10";
    private static String telefone = "+55 (21) 91234-5678";
    private static char sexo = 'M';

    @Test
    public void canCreateEmpty() {
        Pessoa p = new Pessoa();
        assertTrue(p.getClass().getSimpleName().equalsIgnoreCase("Pessoa"), "Invalid class!");
    }

    @Test
    public void canCreateFull() {
        Pessoa p = new Pessoa(nome, email, cpf, telefone, sexo, data);

        assertTrue(p.getNome() == nome, "Invalid name!");
        assertTrue(p.getEmail() == email, "Invalid email!");
        assertTrue(p.getCpf() == cpf, "Invalid cpf!");
        assertTrue(p.getTelefone() == telefone, "Invalid telefone!");
        assertTrue(p.getSexo() == sexo, "Invalid sexo!");
        assertTrue(p.getDataNascimento() == data, "Invalid data nascimento!");
    }

    @Test
    public void canSetAttributes() {
        Pessoa p = new Pessoa();

        p.setNome(nome);
        p.setEmail(email);
        p.setCpf(cpf);
        p.setTelefone(telefone);
        p.setSexo(sexo);
        p.setDataNascimento(data);

        assertTrue(p.getNome() == nome, "Invalid name!");
        assertTrue(p.getEmail() == email, "Invalid email!");
        assertTrue(p.getCpf() == cpf, "Invalid cpf!");
        assertTrue(p.getTelefone() == telefone, "Invalid telefone!");
        assertTrue(p.getSexo() == sexo, "Invalid sexo!");
        assertTrue(p.getDataNascimento() == data, "Invalid data nascimento!");
    }

    @Test
    public void canConvertToString() {
        Pessoa p = new Pessoa();
        assertTrue(p.toString().contains(", telefone="), "toString failed!");
    }
}
