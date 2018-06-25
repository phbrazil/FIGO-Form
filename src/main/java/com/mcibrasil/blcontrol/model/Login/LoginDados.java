/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.model.Login;

/**
 *
 * @author paulo.bezerra
 */
public class LoginDados {

    private String username;
    private String password;
    private String nomeUser;
    private String area;
    private int idgrupo;

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public LoginDados(String username, String password, String nomeUser, String area, int idgrupo) {
        this.username = username;
        this.password = password;
        this.nomeUser = nomeUser;
        this.area = area;
        this.idgrupo = idgrupo;
    }


    public int getIdgrupo() {
        return idgrupo;
    }

    public void setIdgrupo(int idgrupo) {
        this.idgrupo = idgrupo;
    }

    public String getNomeUser() {
        return nomeUser;
    }

    public void setNomeUser(String nomeUser) {
        this.nomeUser = nomeUser;
    }

    public String getUserName() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
