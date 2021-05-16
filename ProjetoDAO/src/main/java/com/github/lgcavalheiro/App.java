package com.github.lgcavalheiro;

import java.util.List;

import com.github.lgcavalheiro.DAO.AlunoDTO;
import com.github.lgcavalheiro.DAO.JDBCAlunoDAO;

public class App {
    public static void main(String[] args) {
        try {
            JDBCAlunoDAO aDAO = new JDBCAlunoDAO();

            // INSERIR
            AlunoDTO novoAluno = new AlunoDTO();
            novoAluno.setNome("Nometeste DAO");
            novoAluno.setId(8);
            novoAluno.setCpf("8888888");
            aDAO.inserir(novoAluno);

            // LISTA TODOS
            List<AlunoDTO> alunos = aDAO.listar();
            for (AlunoDTO aluno : alunos)
                System.out.println(aluno.getNome());

            // LISTAR NOME
            System.out.println("\n\n");
            alunos = aDAO.listarNome("omet");
            for (AlunoDTO aluno : alunos)
                System.out.println(aluno.getNome());

            // ALTERAR
            AlunoDTO alunoAlterado = new AlunoDTO();
            alunoAlterado.setNome("Alunoalterado");
            alunoAlterado.setId(7);
            alunoAlterado.setCpf("999.999.990-10");
            aDAO.alterar(alunoAlterado);

            // EXCLUSAO
            AlunoDTO alunoExclusao = new AlunoDTO();
            alunoExclusao.setId(4);
            aDAO.remover(alunoExclusao);

            aDAO.finalize();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            System.exit(0);
        }
    }
}
