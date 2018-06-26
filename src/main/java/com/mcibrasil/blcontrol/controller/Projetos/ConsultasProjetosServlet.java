/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller.Projetos;

import com.mcibrasil.blcontrol.dao.Projetos.ProjetosDAO;
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
@WebServlet(name = "ConsultasProjetos", urlPatterns = {"/ConsultasProjetos"})
public class ConsultasProjetosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        String valorbusca = request.getParameter("valorbusca");
        
        System.out.println(valorbusca+"  aqui no Servlet");
        
        ProjetosDAO projetosdao = new ProjetosDAO();

        ResultSet resultado = projetosdao.BuscarProjeto(valorbusca);
        valorbusca = null;

        request.setAttribute("valorbusca", null);

        request.setAttribute("projetos", resultado);

        request.getRequestDispatcher("ListarProjetos.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
