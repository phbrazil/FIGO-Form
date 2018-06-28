/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller.FIGOCompanyInformation;

import com.mcibrasil.blcontrol.model.FIGOCompanyInformation.FIGOCompanyInformation;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author paulo.bezerra
 */
@WebServlet(name = "FIGOCompanyInformation", urlPatterns = {"/FIGOCompanyInformation"})
public class CompanyInformation extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        HttpSession sessao = request.getSession(true);

        String cnpj = request.getParameter("cnpj");
        String nomefantasia = request.getParameter("nomefantasia");
        String razaosocial = request.getParameter("razaosocial");
        String areaatuacao = request.getParameter("areaatuacao");
        String cep = request.getParameter("cep");
        String rua = request.getParameter("rua");
        String numero = request.getParameter("numero");
        String complemento = request.getParameter("complemento");
        String bairro = request.getParameter("bairro");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("uf"); // GAMBIS UF
        String pais = request.getParameter("pais");
        String ddi1 = request.getParameter("ddi1");
        String ddd1 = request.getParameter("ddd1");
        String telefone1 = request.getParameter("telefone1");
        String ddi2 = request.getParameter("ddi2");
        String ddd2 = request.getParameter("ddd2");
        String telefone2 = request.getParameter("telefone2");
        String ddifax = request.getParameter("ddifax");
        String dddfax = request.getParameter("dddfax");
        String fax = request.getParameter("fax");
        String site = request.getParameter("site");
        String email = request.getParameter("email");
        String emailcontato = request.getParameter("emailcontato");
        String obs = request.getParameter("obs");
        String contato = request.getParameter("cnpj");
        String user = (String) sessao.getAttribute("username");
        String cargo = request.getParameter("cargo");

        FIGOCompanyInformation companyinformation = new FIGOCompanyInformation(cnpj, nomefantasia, razaosocial, areaatuacao,
                cep, rua, numero, complemento, bairro, cidade, estado, pais, ddi1, ddd1, telefone1, ddi2, ddd2, telefone2,
                ddifax, dddfax, fax, site, email, obs, contato, cargo, ddifax, dddfax, user, emailcontato, user);

        com.mcibrasil.blcontrol.dao.FIGOCompanyInformation.FIGOCompanyInformation gravarproposta = new com.mcibrasil.blcontrol.dao.FIGOCompanyInformation.FIGOCompanyInformation();

        gravarproposta.GravarFIGOCompanyInformation(companyinformation);

        companyinformation = null;

        request.setAttribute("mensagem", "Company Information Cadastrado");

        request.getRequestDispatcher("CadastrarCompanyInformation.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
