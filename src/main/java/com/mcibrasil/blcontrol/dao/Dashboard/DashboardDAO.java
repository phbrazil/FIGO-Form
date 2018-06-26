/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.dao.Dashboard;

import com.mcibrasil.blcontrol.dao.Projetos.*;
import com.mcibrasil.blcontrol.dao.Conexao.Conexao;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author paulo.bezerra
 */
public class DashboardDAO {

    private Connection conexao = null;

    public int Dashboard(String type) {

        int janeiro = 0;
        int fevereiro;
        int marco;
        int abril;
        int maio;
        int junho;
        int julho;
        int agosto;
        int setembro;
        int outubro;
        int novembro;
        int dezembro;

        String select = "";

        Conexao bancoconexao = new Conexao();

        try {

            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();

            select = "select count(*) as quantidade from projetos where projectstatus = '" + type.toUpperCase() + "'";
            ResultSet result = st.executeQuery(select);

            while (result.next()) {

                janeiro = result.getInt("quantidade");
                System.out.println(janeiro);

            }

            conexao.close();

        } catch (Exception e) {

            System.out.println("Error: " + e.getMessage());

        }
        return janeiro;
    }

}
