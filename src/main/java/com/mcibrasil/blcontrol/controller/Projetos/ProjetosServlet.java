/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller.Projetos;

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
@WebServlet(name = "ProjetosServlet", urlPatterns = {"/ProjetosServlet"})
public class ProjetosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nomecliente = request.getParameter("nomecliente");
        String businessmanager = request.getParameter("businessmanager");
        String accountmanager = request.getParameter("accountmanager");
        String creator = "Paulo Bezerra";
        float questao1 = Float.valueOf(request.getParameter("questao1"));
        int questao2 = Integer.valueOf(request.getParameter("questao2"));
        String questao3 = request.getParameter("questao3");
        String questao4 = request.getParameter("questao4");
        String questao5 = request.getParameter("questao5");
        String questao6 = request.getParameter("questao6");
        String questao7 = request.getParameter("questao7");
        String questao8 = request.getParameter("questao8");
        float questao9 = Float.valueOf(request.getParameter("questao9"));
        String questao10 = request.getParameter("questao10");
        String questao11 = request.getParameter("questao11");

       // Projetos propostas = new Propostas(nomecliente, businessmanager, accountmanager, creator, questao1, questao2, questao3, questao4, questao5, questao6, questao7, questao8, questao9, questao10, questao11);

        com.mcibrasil.blcontrol.dao.ClientMapping.ClientMappingDAO gravarproposta = new com.mcibrasil.blcontrol.dao.ClientMapping.ClientMappingDAO();

       // gravarproposta.GravarProposta(propostas);

        //projetos = null;
        
        request.getRequestDispatcher("Home.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
