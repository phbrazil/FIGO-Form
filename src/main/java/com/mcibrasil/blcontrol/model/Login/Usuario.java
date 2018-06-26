/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.model.Login;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author paulo.bezerra
 */
public class Usuario {

    private int usuarioid;
    private String nomeUsuario;
    private String username;
    private String password;
    private int idgrupo;
    private String area;

    public int getIdgrupo() {
        return idgrupo;
    }

    public void setIdgrupo(int idgrupo) {
        this.idgrupo = idgrupo;
    }

    
    public int getUsuarioId() {
        return usuarioid;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }

    public void setNomeUsuario(String nomeUsuario) {
        this.nomeUsuario = nomeUsuario;
    }
    
    public String getUsername() {
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
    

    private java.util.List<Usuario> listaUsuario = new ArrayList<Usuario>();

    public List<Usuario> getListaUsuario() {
        return listaUsuario;
    }

    public void setListaUsuario(Usuario Usuarios) {
        listaUsuario.add(Usuarios);
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Usuario(String nomeUsuario, String username, String password, int idgrupo, String area) {
        this.nomeUsuario = nomeUsuario;
        this.username = username;
        this.password = password;
        this.idgrupo = idgrupo;
        this.area = area;
    }


   
    public Usuario obterUsuarioLista(String id) {
        if (!listaUsuario.isEmpty()) {
            for (int i = 0; i < listaUsuario.size(); i++) {
                if (listaUsuario.get(i) != null) {
                    return listaUsuario.get(i);

                }
            }
        }
        return null;
    }


}
