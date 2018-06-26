/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.dao.Projetos;

import com.mcibrasil.blcontrol.dao.Conexao.Conexao;
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

    public ResultSet BuscarProjeto(String valorbusca) {

        String selectcodigo = "";
        String selectnome = "";

        Conexao bancoconexao = new Conexao();
        
        System.out.println(valorbusca+" aqui nos projetos");

        try {

            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();

            if (valorbusca.trim().length() > 4) {
                selectnome = "select * from projetos where projectname like '%" + valorbusca.trim() + "%'";
                ResultSet resultnome = st.executeQuery(selectnome);
                return resultnome;

            } else if (valorbusca.trim().length() == 4) {
                selectcodigo = "select * from projetos where projectanalcode = '" + valorbusca.trim() + "'";
                ResultSet resultcodigo = st.executeQuery(selectcodigo);
                return resultcodigo;

            } else if (valorbusca.trim().length() < 4) {
                selectnome = "select * from projetos where projectname like '%" + valorbusca.trim() + "%'";
                ResultSet resultnome = st.executeQuery(selectnome);
                return resultnome;

            }

            conexao.close();

        } catch (Exception e) {

            System.out.println("Error: " + e.getMessage());

        }
        return null;
    }

}
