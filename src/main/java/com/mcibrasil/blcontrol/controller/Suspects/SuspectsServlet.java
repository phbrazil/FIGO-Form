/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller.Suspects;

import com.mcibrasil.blcontrol.dao.Suspects.SuspectsDAO;
import com.mcibrasil.blcontrol.model.Suspects.Suspects;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author paulo.bezerra
 */
@WebServlet(name = "CadastrarSuspects", urlPatterns = {"/SuspectsServlet"})
public class SuspectsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String empresa = request.getParameter("empresa");
        String nomecontato = request.getParameter("nomecontato");
        String telefone1 = request.getParameter("telefone1");
        String telefone2 = request.getParameter("telefone2");
        String email = request.getParameter("email");
        String cargo = request.getParameter("cargo");
        String origem = request.getParameter("origem");
        String eventos = request.getParameter("eventos");
        String incentivos = request.getParameter("incentivos");
        String contatomci = request.getParameter("contatomci");

        Suspects suspects = new Suspects(empresa, nomecontato, telefone1, telefone2, email, cargo, origem, eventos, incentivos, contatomci);
        
        SuspectsDAO gravarsuspect = new SuspectsDAO();

        gravarsuspect.GravarSuspects(suspects);
        suspects = null;

        request.setAttribute("mensagem", "Suspect Cadastrado");

        request.getRequestDispatcher("CadastrarSuspect.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
