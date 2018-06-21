/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller;

import com.mcibrasil.blcontrol.dao.ProjetosDAO;
import com.mcibrasil.blcontrol.dao.PropostasDAO;
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
@WebServlet(name = "Exportar", urlPatterns = {"/Exportar"})
public class ExportarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acaoreport = request.getParameter("acaoreport");

        if (acaoreport.equals("ExportProjetos")) {

            ProjetosDAO projetosdao = new ProjetosDAO();

            ResultSet exportproj = projetosdao.PesquisarProjetosGeral();
            acaoreport = null;

            request.setAttribute("projetos", exportproj);
            request.getRequestDispatcher("ExportProjetos.jsp").forward(request, response);

        } else if (acaoreport.equals("ExportPropostas")) {

            PropostasDAO propostasDAO = new PropostasDAO();

            ResultSet exportpropostas = propostasDAO.PesquisarPropostasGeral();
            acaoreport = null;

            request.setAttribute("propostas", exportpropostas);
            request.getRequestDispatcher("ExportPropostas.jsp").forward(request, response);

        } else if (acaoreport.equals("ListarProjetos")) {

            ProjetosDAO projetosdao = new ProjetosDAO();

            ResultSet exportproj = projetosdao.PesquisarProjetosGeral();

            acaoreport = null;

            request.setAttribute("projetos", exportproj);
            request.getRequestDispatcher("ListarProjetos.jsp").forward(request, response);

        } else if (acaoreport.equals("ListarPropostas")) {

            PropostasDAO propostas = new PropostasDAO();

            ResultSet exportpropostas = propostas.PesquisarPropostasGeral();

            acaoreport = null;

            request.setAttribute("propostas", exportpropostas);
            request.getRequestDispatcher("ListarPropostas.jsp").forward(request, response);

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