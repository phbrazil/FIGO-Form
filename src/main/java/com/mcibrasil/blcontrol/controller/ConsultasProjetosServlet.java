/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller;

import com.mcibrasil.blcontrol.dao.ProjetosDAO;
import com.mcibrasil.blcontrol.dao.ClientMappingDAO;
import java.awt.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author paulo.bezerra
 */
@WebServlet(name = "ConsultasProjetos", urlPatterns = {"/ConsultasProjetos"})
public class ConsultasProjetosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String valorbusca = request.getParameter("valorbusca");

        ProjetosDAO projetosdao = new ProjetosDAO();

        ResultSet resultado = projetosdao.BuscarProjeto(valorbusca);
        valorbusca = null;

        request.setAttribute("valorbusca", null);

        request.setAttribute("resultadoprojetos", resultado);
        
        request.getRequestDispatcher("ConsultaProjetosResultado.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
