/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.dao.Prospects;

import com.mcibrasil.blcontrol.dao.Conexao.Conexao;
import com.mcibrasil.blcontrol.model.Prospects.Prospects;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author paulo.bezerra
 */
public class ProspectsDAO {

    private Connection conexao = null;

    public ResultSet PesquisarProspectsGeral() {

        String selectgeral = "";

        Conexao bancoconexao = new Conexao();

        try {

            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();
            selectgeral = "select * from prospects order by empresa";
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

    public ResultSet BuscarProspect(String valorbusca) {

        String selectnome = "";

        Conexao bancoconexao = new Conexao();

        try {

            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();

            selectnome = "select * from prospects where empresa like '" + valorbusca.trim() + "'";
            ResultSet resultnome = st.executeQuery(selectnome);

            if (selectnome != null) {
                return resultnome;
            }

            conexao.close();

        } catch (Exception e) {

            System.out.println("Error: " + e.getMessage());

        }
        return null;
    }    public void GravarProspects(Prospects prospects) {

        Conexao bancoconexao = new Conexao();

        try {

            Connection conexao = bancoconexao.getConnection();

            String query = ("INSERT INTO prospects (empresa, nomecontato,telefone1,"
                    + "telefone2, email,cargo, origem, hub, travel, contatomci, datacadastro,user)"
                    + " VALUES (?,?,?,?,?,?,?,?,?,?,now(),'paulo bezerra')");

            PreparedStatement preparedStmt = conexao.prepareStatement(query);
            preparedStmt.setString(1, prospects.getEmpresa());
            preparedStmt.setString(2, prospects.getNomecontato());
            preparedStmt.setString(3, prospects.getTelefone1());
            preparedStmt.setString(4, prospects.getTelefone2());
            preparedStmt.setString(5, prospects.getEmail());
            preparedStmt.setString(6, prospects.getCargo());
            preparedStmt.setString(7, prospects.getOrigem());
            preparedStmt.setString(8, prospects.getHub());
            preparedStmt.setString(9, prospects.getTravel());
            preparedStmt.setString(10, prospects.getContatomci());

            preparedStmt.execute();

            conexao.close();

        } catch (Exception e) {

            System.out.println("erro" + e.getMessage());

        }

    }

}
