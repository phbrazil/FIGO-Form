/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.dao.Dashboard;

import com.mcibrasil.blcontrol.dao.Conexao.Conexao;
import com.mcibrasil.blcontrol.model.Dashboard.Dashboard;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author paulo.bezerra
 */
public class DashboardDAO {

    private Connection conexao = null;

    public int Dashboard(String type) {
        
        Dashboard dashboard = new Dashboard(null, null, null, null, null, null, null, null, null, null, null, null);

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
        String dashboardselect = "";

        Conexao bancoconexao = new Conexao();

        try {

            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();

            select = "select count(*) as quantidade from projetos where projectstatus = '" + type.toUpperCase() + "'";
            dashboardselect = "select * from dashboardjaneiro2018, dashboardfevereiro2018, dashboardmarco2018, dashboardabril2018";
            
            
            ResultSet result = st.executeQuery(select);

            while (result.next()) {

                janeiro = result.getInt("quantidade");
                
                dashboard.setJaneiro(result.getString("quantidade"));

            }

            conexao.close();

        } catch (Exception e) {

            System.out.println("Error: " + e.getMessage());

        }
        return janeiro;
    }

}
