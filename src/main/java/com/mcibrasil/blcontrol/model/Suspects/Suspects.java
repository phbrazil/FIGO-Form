package com.mcibrasil.blcontrol.model.Suspects;

import com.mcibrasil.blcontrol.model.Prospects.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ASAPH-001
 */
public class Suspects {
    
    private String empresa;
    private String nomecontato;
    private String telefone1;
    private String telefone2;
    private String email;
    private String cargo;
    private String origem;
    private String eventos;
    private String incentivos;
    private String contatomci;

    public Suspects(String empresa, String nomecontato, String telefone1, String telefone2, String email, String cargo, String origem, String eventos, String incentivos, String contatomci) {
        this.empresa = empresa;
        this.nomecontato = nomecontato;
        this.telefone1 = telefone1;
        this.telefone2 = telefone2;
        this.email = email;
        this.cargo = cargo;
        this.origem = origem;
        this.eventos = eventos;
        this.incentivos = incentivos;
        this.contatomci = contatomci;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getNomecontato() {
        return nomecontato;
    }

    public void setNomecontato(String nomecontato) {
        this.nomecontato = nomecontato;
    }

    public String getTelefone1() {
        return telefone1;
    }

    public void setTelefone1(String telefone1) {
        this.telefone1 = telefone1;
    }

    public String getTelefone2() {
        return telefone2;
    }

    public void setTelefone2(String telefone2) {
        this.telefone2 = telefone2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getOrigem() {
        return origem;
    }

    public void setOrigem(String origem) {
        this.origem = origem;
    }

    public String getEventos() {
        return eventos;
    }

    public void setEventos(String eventos) {
        this.eventos = eventos;
    }

    public String getIncentivos() {
        return incentivos;
    }

    public void setIncentivos(String incentivos) {
        this.incentivos = incentivos;
    }

  

    public String getContatomci() {
        return contatomci;
    }

    public void setContatomci(String contatomci) {
        this.contatomci = contatomci;
    }
    
    
}
