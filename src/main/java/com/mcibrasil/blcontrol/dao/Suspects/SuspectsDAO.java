/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.dao.Suspects;

import com.mcibrasil.blcontrol.dao.Conexao.Conexao;
import com.mcibrasil.blcontrol.model.Suspects.Suspects;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author paulo.bezerra
 */
public class SuspectsDAO {

    private Connection conexao = null;

    public ResultSet PesquisarSuspectsGeral() {

        String selectgeral = "";

        Conexao bancoconexao = new Conexao();

        try {

            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();
            selectgeral = "select * from suspects order by empresa";
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

    public ResultSet BuscarSuspects(String valorbusca) {

        String selectnome = "";

        Conexao bancoconexao = new Conexao();

        try {

            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();

            selectnome = "select * from suspects where empresa like '" + valorbusca.trim() + "'";
            ResultSet resultnome = st.executeQuery(selectnome);

            if (selectnome != null) {
                return resultnome;
            }

            conexao.close();

        } catch (Exception e) {

            System.out.println("Error: " + e.getMessage());

        }
        return null;
    }    public void GravarSuspects(Suspects suspects) {

        Conexao bancoconexao = new Conexao();

        try {

            Connection conexao = bancoconexao.getConnection();

            String query = ("INSERT INTO suspects (empresa, nomecontato,telefone1,"
                    + "telefone2, email,cargo, origem, eventos, incentivos, contatomci, datacadastro,user)"
                    + " VALUES (?,?,?,?,?,?,?,?,?,?,now(),'paulo bezerra')");

            PreparedStatement preparedStmt = conexao.prepareStatement(query);
            preparedStmt.setString(1, suspects.getEmpresa());
            preparedStmt.setString(2, suspects.getNomecontato());
            preparedStmt.setString(3, suspects.getTelefone1());
            preparedStmt.setString(4, suspects.getTelefone2());
            preparedStmt.setString(5, suspects.getEmail());
            preparedStmt.setString(6, suspects.getCargo());
            preparedStmt.setString(7, suspects.getOrigem());
            preparedStmt.setString(8, suspects.getEventos());
            preparedStmt.setString(9, suspects.getIncentivos());
            preparedStmt.setString(10, suspects.getContatomci());

            preparedStmt.execute();

            conexao.close();

        } catch (Exception e) {

            System.out.println("erro" + e.getMessage());

        }

    }

}
