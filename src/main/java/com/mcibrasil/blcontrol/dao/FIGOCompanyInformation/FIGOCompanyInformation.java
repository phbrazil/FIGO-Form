/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.dao.FIGOCompanyInformation;

import com.mcibrasil.blcontrol.dao.Conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author paulo.bezerra
 */
public class FIGOCompanyInformation {

    private Connection conexao = null;

    public ResultSet PesquisarFigoCompanyInformationGeral() {

        String selectgeral = "";

        Conexao bancoconexao = new Conexao();

        try {

            Class.forName("com.mysql.jdbc.Driver");

            conexao = bancoconexao.getConnection();

            java.sql.Statement st = conexao.createStatement();
            selectgeral = "select * from companyinformation order by user";
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

    public void GravarFIGOCompanyInformation(com.mcibrasil.blcontrol.model.FIGOCompanyInformation.FIGOCompanyInformation companyinformation) {

        Conexao bancoconexao = new Conexao();

        try {

            Connection conexao = bancoconexao.getConnection();

            String query = ("INSERT INTO companyinformation (nomefantasia, razaosocial,areaatuacao,"
                    + "cep, rua,numero, complemento, bairro, cidade, estado, pais,ddi1,ddd1,telefone1,"
                    + "ddi2,ddd2, telefone2, ddicelular, dddcelular, celular, ddifax, dddfax, fax, site,email,"
                    + "emailcontato,obs, contato,user, cargo, cnpj) VALUES "
                    + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"); 

            PreparedStatement preparedStmt = conexao.prepareStatement(query);
            preparedStmt.setString(1, companyinformation.getNomefantasia());
            preparedStmt.setString(2, companyinformation.getRazaosocial());
            preparedStmt.setString(3, companyinformation.getAreaatuacao());
            preparedStmt.setString(4, companyinformation.getCep());
            preparedStmt.setString(5, companyinformation.getRua());
            preparedStmt.setString(6, companyinformation.getNumero());
            preparedStmt.setString(7, companyinformation.getComplemento());
            preparedStmt.setString(8, companyinformation.getBairro());
            preparedStmt.setString(9, companyinformation.getCidade());
            preparedStmt.setString(10, companyinformation.getEstado());
            preparedStmt.setString(11, companyinformation.getPais());
            preparedStmt.setString(12, companyinformation.getDdi1());
            preparedStmt.setString(13, companyinformation.getDdd1());
            preparedStmt.setString(14, companyinformation.getTelefone1());
            preparedStmt.setString(15, companyinformation.getDdi2());
            preparedStmt.setString(16, companyinformation.getDdd2());
            preparedStmt.setString(17, companyinformation.getTelefone2());
            preparedStmt.setString(18, companyinformation.getDdicelular());
            preparedStmt.setString(19, companyinformation.getDddcelular());
            preparedStmt.setString(20, companyinformation.getCelular());
            preparedStmt.setString(21, companyinformation.getDdifax());
            preparedStmt.setString(22, companyinformation.getDddfax());
            preparedStmt.setString(23, companyinformation.getFax());
            preparedStmt.setString(24, companyinformation.getSite());
            preparedStmt.setString(25, companyinformation.getEmail());
            preparedStmt.setString(26, companyinformation.getEmailcontato());
            preparedStmt.setString(27, companyinformation.getObs());
            preparedStmt.setString(28, companyinformation.getContato());
            preparedStmt.setString(29, companyinformation.getUser());
            preparedStmt.setString(30, companyinformation.getCargo());            
            preparedStmt.setString(31, companyinformation.getCnpj());

            preparedStmt.execute();

            conexao.close();

        } catch (Exception e) {

            System.out.println("erro" + e.getMessage());

        }

    }

}
