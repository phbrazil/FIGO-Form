/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller.Prospects;

import com.mcibrasil.blcontrol.dao.Prospects.ProspectsDAO;
import com.mcibrasil.blcontrol.model.Prospects.Prospects;
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
@WebServlet(name = "CadastrarProspects", urlPatterns = {"/ProspectsServlet"})
public class ProspectsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sessao = request.getSession(true);

        String empresa = request.getParameter("empresa");
        String nomecontato = request.getParameter("nomecontato");
        String telefone1 = request.getParameter("telefone1");
        String telefone2 = request.getParameter("telefone2");
        String email = request.getParameter("email");
        String cargo = request.getParameter("cargo");
        String origem = request.getParameter("origem");
        String hub = request.getParameter("hub");
        String travel = request.getParameter("travel");
        String contatomci = request.getParameter("contatomci");
        String username = (String) sessao.getAttribute("username");
        
        System.out.println(username+ " aqui");
        Prospects prospects = new Prospects(empresa, nomecontato, telefone1, telefone2, email, cargo, origem, hub, travel, contatomci, username);

        ProspectsDAO gravarprospect = new ProspectsDAO();

        gravarprospect.GravarProspects(prospects);
        prospects = null;

        request.setAttribute("mensagem", "Prospect Cadastrado");

        request.getRequestDispatcher("CadastrarProspect.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
