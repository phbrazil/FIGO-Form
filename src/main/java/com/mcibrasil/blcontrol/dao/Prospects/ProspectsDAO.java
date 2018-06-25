/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.dao.Prospects;

import com.mcibrasil.blcontrol.dao.Conexao.Conexao;
import java.sql.Connection;
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
            selectgeral = "select * from prospects order by datacadastro";
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
    }

}
