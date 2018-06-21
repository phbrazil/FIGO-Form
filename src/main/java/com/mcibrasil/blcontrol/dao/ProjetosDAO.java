/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.dao;

import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author paulo.bezerra
 */
public class ProjetosDAO {

    private Connection conexao = null;




    public ResultSet PesquisarProjetosGeral() {

        String selectgeral = "";

        Conexao bancoconexao = new Conexao();

        try {
            
            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();
           selectgeral = "select * from projetos order by area";
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

}
