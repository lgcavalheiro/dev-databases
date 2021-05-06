package com.github.lgcavalheiro.model;

import static org.junit.Assert.assertTrue;

import java.util.Date;

import org.junit.Test;

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
        assertTrue("Invalid class!", p.getClass().getSimpleName().equalsIgnoreCase("Pessoa"));
    }

    @Test
    public void canCreateFull() {
        Pessoa p = new Pessoa(nome, email, cpf, telefone, sexo, data);

        assertTrue("Invalid name!", p.getNome() == nome);
        assertTrue("Invalid email!", p.getEmail() == email);
        assertTrue("Invalid cpf!", p.getCpf() == cpf);
        assertTrue("Invalid telefone!", p.getTelefone() == telefone);
        assertTrue("Invalid sexo!", p.getSexo() == sexo);
        assertTrue("Invalid data nascimento!", p.getDataNascimento() == data);
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

        assertTrue("Invalid name!", p.getNome() == nome);
        assertTrue("Invalid email!", p.getEmail() == email);
        assertTrue("Invalid cpf!", p.getCpf() == cpf);
        assertTrue("Invalid telefone!", p.getTelefone() == telefone);
        assertTrue("Invalid sexo!", p.getSexo() == sexo);
        assertTrue("Invalid data nascimento!", p.getDataNascimento() == data);
    }

    @Test
    public void canConvertToString() {
        Pessoa p = new Pessoa();
        assertTrue("toString failed!", p.toString().contains(", telefone="));
    }
}
