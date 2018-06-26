/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller.Dashboard;

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
@WebServlet(name = "Dashboard", urlPatterns = {"/Dashboard"})
public class Dashboard extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String type = request.getParameter("type");

        if (type.equals("Won")) {

            request.setAttribute("type", type);
            request.getRequestDispatcher("Dashboard.jsp").forward(request, response);

        } else if (type.equals("Lost")) {
            
            request.setAttribute("type", type);
            request.getRequestDispatcher("Dashboard.jsp").forward(request, response);

        } else if (type.equals("Open")) {
            
            request.setAttribute("type", type);
            request.getRequestDispatcher("Dashboard.jsp").forward(request, response);

        }else if (type.equals("Canceled")) {
            
            request.setAttribute("type", type);
            request.getRequestDispatcher("Dashboard.jsp").forward(request, response);

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
