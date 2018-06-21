/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author paulo.bezerra
 */
public class PropostasDAO {

    private Connection conexao = null;

    public ResultSet PesquisarPropostasGeral() {

        String selectgeral = "";

        Conexao bancoconexao = new Conexao();

        try {

            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();
            selectgeral = "select * from propostas order by creator";
            ResultSet resultgeral = st.executeQuery(selectgeral);

            if (resultgeral != null) {
                return resultgeral;
            }

            conexao.close();

        } catch (Exception e) {

            System.out.println("Error: " + e.getMessage());

        }
        return null;
    }

    public void GravarProposta(com.mcibrasil.blcontrol.model.Propostas prospeccao) {

        Conexao bancoconexao = new Conexao();

        try {

            Connection conexao = bancoconexao.getConnection();

            String query = ("INSERT INTO propostas (nomecliente, businessmanager,accountmanager,"
                    + "creator, questao1,questao2, questao3, questao4, questao5, questao6, questao7,questao8,questao9,questao10,"
                    + "questao11) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            PreparedStatement preparedStmt = conexao.prepareStatement(query);
            preparedStmt.setString(1, prospeccao.getNomecliente());
            preparedStmt.setString(2, prospeccao.getBusinessmanager());
            preparedStmt.setString(3, prospeccao.getAccountmanager());
            preparedStmt.setString(4, prospeccao.getCreator());
            preparedStmt.setFloat(5, prospeccao.getQuestao1());
            preparedStmt.setInt(6, prospeccao.getQuestao2());
            preparedStmt.setString(7, prospeccao.getQuestao3());
            preparedStmt.setString(8, prospeccao.getQuestao4());
            preparedStmt.setString(9, prospeccao.getQuestao5());
            preparedStmt.setString(10, prospeccao.getQuestao6());
            preparedStmt.setString(11, prospeccao.getQuestao7());
            preparedStmt.setString(12, prospeccao.getQuestao8());
            preparedStmt.setFloat(13, prospeccao.getQuestao9());
            preparedStmt.setString(14, prospeccao.getQuestao10());
            preparedStmt.setString(15, prospeccao.getQuestao11());
            preparedStmt.execute();

            conexao.close();

        } catch (Exception e) {

            System.out.println("erro" + e.getMessage());

        }

    }

}
