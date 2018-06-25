/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller.Login;

import com.mcibrasil.blcontrol.dao.Login.AcessoLoginDAO;
import com.mcibrasil.blcontrol.model.Login.LoginDados;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Paulo.Bezerra
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        LoginDados logindados = new LoginDados(null, null, null, null, 0);
        boolean acessopermitido = false;

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        logindados.setUsername(username);
        logindados.setPassword(password);
        AcessoLoginDAO acessologin = new AcessoLoginDAO();
        acessopermitido = acessologin.ValidaAcesso(logindados);

        if (acessopermitido == true) {

            request.setAttribute("NomeDoUser", logindados.getNomeUser());
            acessopermitido = false;
            request.getRequestDispatcher("Home.jsp").forward(request, response);
            

        } else {

            request.setAttribute("loginfailed", "Usuário ou senha incorreto!");

            request.getRequestDispatcher("index.jsp").forward(request, response);

        }

    }

}
