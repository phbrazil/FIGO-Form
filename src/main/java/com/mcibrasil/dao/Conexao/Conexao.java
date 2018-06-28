/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.dao.Conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author paulo.hbezerra
 */
public class Conexao {

    private String url = "jdbc:mysql://localhost:3306/figocompanyinformation";
    private String driver = "com.mysql.jdbc.Driver";
    private String userName = "mci";
    private String password = "0c24a188a9";
    private Connection conexao = null;

    /*
    CREATE USER 'mci'@'localhost' IDENTIFIED BY '0c24a188a9';
    GRANT ALL PRIVILEGES ON * . * TO 'mci'@'localhost';
     */
    public Connection getConnection() throws SQLException {

        try {
            Class.forName(driver);
            if (conexao == null) {

                conexao = DriverManager.getConnection(url, userName, password);
            }
        } catch (Exception e) {
            System.out.print("Erro: " + e.getMessage());
        }
        return conexao;
    }

}
