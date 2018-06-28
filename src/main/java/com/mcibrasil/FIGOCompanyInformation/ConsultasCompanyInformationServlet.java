/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.FIGOCompanyInformation;

import com.mcibrasil.dao.FIGOCompanyInformation.FIGOCompanyInformation;
import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author paulo.bezerra
 */
@WebServlet(name = "ConsultasCompanyInformationServlet", urlPatterns = {"/ConsultasCompanyInformationServlet"})
public class ConsultasCompanyInformationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        String valorbusca = request.getParameter("valorbusca");
        
        
        FIGOCompanyInformation companydao = new FIGOCompanyInformation();

        ResultSet resultado = companydao.PesquisarFigoCompanyInformation(valorbusca);
        valorbusca = null;

        request.setAttribute("valorbusca", null);

        request.setAttribute("companyinformation", resultado);

        request.getRequestDispatcher("ListarCompanyInformation.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
