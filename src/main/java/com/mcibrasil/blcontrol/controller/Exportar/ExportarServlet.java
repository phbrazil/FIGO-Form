/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller.Exportar;

import com.mcibrasil.blcontrol.dao.FIGOCompanyInformation.FIGOCompanyInformation;
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
@WebServlet(name = "Exportar", urlPatterns = {"/Exportar"})
public class ExportarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acaoreport = request.getParameter("acaoreport");

        if (acaoreport.equals("ListarCompanyInformation")) {
            
            System.out.println("entrei aqui ");

            FIGOCompanyInformation companyinformation = new FIGOCompanyInformation();

            ResultSet exportcompanyinformation = companyinformation.PesquisarFigoCompanyInformationGeral();

            acaoreport = null;

            request.setAttribute("companyinformation", exportcompanyinformation);
            request.getRequestDispatcher("ListarCompanyInformation.jsp").forward(request, response);

        } 

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
