/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.blcontrol.controller.Exportar;

import com.mcibrasil.blcontrol.dao.Projetos.ProjetosDAO;
import com.mcibrasil.blcontrol.dao.ClientMapping.ClientMappingDAO;
import com.mcibrasil.blcontrol.dao.Prospects.ProspectsDAO;
import com.mcibrasil.blcontrol.dao.Suspects.SuspectsDAO;
import com.mcibrasil.blcontrol.model.Suspects.Suspects;
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

        if (acaoreport.equals("ListarProjetos")) {

            ProjetosDAO projetosdao = new ProjetosDAO();

            ResultSet exportproj = projetosdao.PesquisarProjetosGeral();

            acaoreport = null;

            request.setAttribute("projetos", exportproj);
            request.getRequestDispatcher("ListarProjetos.jsp").forward(request, response);

        } else if (acaoreport.equals("ExportProjetos")) {

            ProjetosDAO projetosdao = new ProjetosDAO();

            ResultSet exportproj = projetosdao.PesquisarProjetosGeral();
            acaoreport = null;

            request.setAttribute("projetos", exportproj);
            request.getRequestDispatcher("Exportar/ExportProjetos.jsp").forward(request, response);

        } else if (acaoreport.equals("ListarClientMapping")) {

            System.out.println("entrei aqui");

            ClientMappingDAO clientmapping = new ClientMappingDAO();

            ResultSet exportclientmapping = clientmapping.PesquisarClientMappingGeral();

            acaoreport = null;

            request.setAttribute("clientmapping", exportclientmapping);
            request.getRequestDispatcher("ListarClientMapping.jsp").forward(request, response);

        } else if (acaoreport.equals("ExportClientMapping")) {

            ClientMappingDAO clientmappingDAO = new ClientMappingDAO();

            ResultSet exportclientmapping = clientmappingDAO.PesquisarClientMappingGeral();
            acaoreport = null;

            request.setAttribute("clientmapping", exportclientmapping);
            request.getRequestDispatcher("Exportar/ExportClientMapping.jsp").forward(request, response);

        } else if (acaoreport.equals("ListarProspects")) {

            ProspectsDAO prospectdao = new ProspectsDAO();

            ResultSet exportprospect = prospectdao.PesquisarProspectsGeral();

            acaoreport = null;

            request.setAttribute("prospects", exportprospect);
            request.getRequestDispatcher("ListarProspects.jsp").forward(request, response);

        } else if (acaoreport.equals("ExportProspects")) {

            ProspectsDAO prospectdao = new ProspectsDAO();

            ResultSet exportprospect = prospectdao.PesquisarProspectsGeral();

            acaoreport = null;

            request.setAttribute("prospects", exportprospect);
            request.getRequestDispatcher("Exportar/ExportProspects.jsp").forward(request, response);

        } else if (acaoreport.equals("ListarSuspects")) {

            SuspectsDAO suspectsdao = new SuspectsDAO();

            ResultSet exportsuspects = suspectsdao.PesquisarSuspectsGeral();

            acaoreport = null;

            request.setAttribute("suspects", exportsuspects);
            request.getRequestDispatcher("ListarSuspects.jsp").forward(request, response);

        } else if (acaoreport.equals("ExportSuspects")) {

            SuspectsDAO suspectsdao = new SuspectsDAO();

            ResultSet exportsuspects = suspectsdao.PesquisarSuspectsGeral();

            acaoreport = null;

            request.setAttribute("suspects", exportsuspects);
            request.getRequestDispatcher("Exportar/ExportSuspects.jsp").forward(request, response);

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
