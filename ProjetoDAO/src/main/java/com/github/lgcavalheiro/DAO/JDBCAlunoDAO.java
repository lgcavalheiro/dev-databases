/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.lgcavalheiro.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author antoniopodgorski
 */
public class JDBCAlunoDAO implements AlunoDAO {

    private Conexao conexao;
    private PreparedStatement stmt;
    private ResultSet rs;

    public JDBCAlunoDAO() throws SQLException {
        try {
            conexao = new Conexao();
        } catch (SQLException ex) {
            throw ex;
        }
    }

    @Override
    public int inserir(AlunoDTO aluno) throws SQLException {
        try {
            stmt = conexao.getConn().prepareStatement("INSERT INTO aluno (id,nome,cpf) VALUES (?,?,?)");
            stmt.setInt(1, aluno.getId());
            stmt.setString(2, aluno.getNome());
            stmt.setString(3, aluno.getCpf());
            return stmt.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        }
    }

    @Override
    public int alterar(AlunoDTO aluno) throws SQLException {
        try {
            stmt = conexao.getConn().prepareStatement("UPDATE aluno SET nome = ?, cpf = ? WHERE id = ?");
            stmt.setString(1, aluno.getNome());
            stmt.setString(2, aluno.getCpf());
            stmt.setInt(3, aluno.getId());
            return stmt.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        }
    }

    @Override
    public int remover(AlunoDTO aluno) throws SQLException {
        try {
            stmt = conexao.getConn().prepareStatement("DELETE from aluno where id = ?");
            stmt.setInt(1, aluno.getId());
            return stmt.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        }
    }

    @Override
    public List<AlunoDTO> listar() throws SQLException {
        List<AlunoDTO> alunos = new ArrayList<AlunoDTO>();
        try {
            stmt = conexao.getConn().prepareStatement("SELECT * FROM aluno");
            rs = stmt.executeQuery();
            while (rs.next()) {
                AlunoDTO aluno = new AlunoDTO();
                aluno.setId(rs.getInt("id"));
                aluno.setNome(rs.getString("nome"));
                aluno.setCpf(rs.getString("cpf"));
                alunos.add(aluno);
            }
        } catch (SQLException ex) {
            throw ex;
        }

        return alunos;
    }

    @Override
    public List<AlunoDTO> listarNome(String nome) throws SQLException {
        List<AlunoDTO> alunos = new ArrayList<AlunoDTO>();
        try {
            stmt = conexao.getConn().prepareStatement("SELECT * FROM aluno WHERE nome LIKE ?");
            stmt.setString(1, "%" + nome + "%");
            rs = stmt.executeQuery();
            while (rs.next()) {
                AlunoDTO aluno = new AlunoDTO();
                aluno.setId(rs.getInt("id"));
                aluno.setNome(rs.getString("nome"));
                aluno.setCpf(rs.getString("cpf"));
                alunos.add(aluno);
            }
        } catch (SQLException ex) {
            throw ex;
        }

        return alunos;
    }

    @Override
    public void finalize() throws SQLException {
        if (conexao != null) {
            System.out.println("Fechando conexão com o banco!");
            conexao.fecharConexao();
        }
        if (stmt != null) {
            System.out.println("Fechando Statement!");
            stmt.close();
        }
        if (rs != null) {
            System.out.println("Fechando ResultSet!");
            rs.close();
        }
    }
}
