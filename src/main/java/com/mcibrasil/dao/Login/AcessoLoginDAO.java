/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.dao.Login;

import com.mcibrasil.dao.Conexao.Conexao;
import com.mcibrasil.blcontrol.model.Login.LoginDados;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author paulo.bezerra
 */
public class AcessoLoginDAO {

    private Connection conexao = null;

    private String username = null;
    private String nomeUser = null;
    private String password = null;
    private String area = null;
    private int idgrupo = 0;

    public boolean ValidaAcesso(LoginDados logindados) {

        boolean usuarionabase = false;
        String select = "";

        Conexao bancoconexao = new Conexao();

        try {
            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();

            //select = "select count(*) validado from usuarios where username = '" + logindados.getUserName() + "' and password = '" + logindados.getPassword() + "'";
            select = "select email, area, password, nomecomp, idgrupo from usuarios where email = '" + logindados.getUserName() + "' and password = '" + logindados.getPassword() + "'";

            ResultSet result = st.executeQuery(select);

            while (result.next()) {
                username = result.getString("email");
                password = result.getString("password");
                nomeUser = result.getString("nomecomp");
                area = result.getString("area");
                idgrupo = result.getInt("idgrupo");

            }
            if (username.equals(logindados.getUserName()) && password.equals(logindados.getPassword())) {

                usuarionabase = true;
                logindados.setNomeUser(nomeUser);
                logindados.setArea(area);
                logindados.setIdgrupo(idgrupo);

            } else {

                usuarionabase = false;

            }

            conexao.close();

        } catch (Exception e) {

            System.out.println("erro" + e.getMessage());

        }

        return usuarionabase;

    }

}
