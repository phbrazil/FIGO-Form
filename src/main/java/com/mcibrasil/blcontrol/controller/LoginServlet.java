/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller;

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

        //LoginDados logindados = new LoginDados();
        boolean acessopermitido = false;

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        request.getRequestDispatcher("Home.jsp").forward(request, response);


       /* if (username.equals("paulo.bezerra@mci-group.com") && password.equals("123")) {
            request.getRequestDispatcher("Home.jsp").forward(request, response);

        }else if (username.equals("simone.nogueira@mci-group.com") && password.equals("123")) {
            request.getRequestDispatcher("Home.jsp").forward(request, response);

        }else if (username.equals("thays.lind@mci-group.com") && password.equals("123")) {
            request.getRequestDispatcher("Home.jsp").forward(request, response);

        }

        String vendedor = null;
        */

        //logindados.setUsername(username);
        //logindados.setPassword(password);
        //AcessoLogin acessologin = new AcessoLogin();
        //acessopermitido = acessologin.ValidaAcesso(logindados);

        /* if (acessopermitido == true) {

            HttpSession sessao = request.getSession();
            
            Sessao sessaodados = new Sessao();

            request.setAttribute("NomeDoUser", logindados.getNomeUser());
            request.setAttribute("vendedor", logindados.getUserName());
            
            sessaodados.setIdsessao(sessao.getId());
            sessaodados.setVendedor(logindados.getUserName());
            sessaodados.setIdloja(logindados.getIdloja());
            
            BancoSessao insertsessao = new BancoSessao();

            insertsessao.InsertSessao(sessaodados);
            
            request.setAttribute("idsessao", sessao.getId());
            request.getRequestDispatcher("SessaoServlet").forward(request, response);

        } else {

            request.setAttribute("loginfailed", "Usuário ou senha incorreto!");

            request.getRequestDispatcher("index.jsp").forward(request, response);

        }
         */
    }

}