<%-- 
    Created on : june 20, 2018, 11:13:17 PM
    Author     : paulo.bezerra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Export</title>
    </head>
    <body>
        <h1>Report Projetos</h1>

        <table>

            <tr>
                    <td>Código do Projeto</td>
                    <td>Nome do Projeto</td>
                    <td>Nome do Cliente</td>
                    <td>Status do Projeto</td>
                    <td>Owner do Projeto</td>
                    <td>Cidade</td>
                    <td>UF</td>
                    <td>Prop Request DATE</td>
                    <td>Event Start Date</td>
                    <td>Event Closing Date</td>
                    <td>Pax Number</td>
                    <td>Cancel Insurance</td>
                    <td>Probability</td>
                    <td>Turn Over forecast Owner</td>
                    <td>GM forecast Owner</td>
                    <td>GM Turn Over Perc</td>
                    <td>Weighted Prospec</td>
                    <td>Data Cadastro
                    <td>Area</td>
            </tr>

            <%

                ResultSet projetos = (ResultSet) request.getAttribute("projetos");

                while (projetos.next()) {


            %>
            <tr>
                <td>CardName / Razão Social</td>
                <td>Card Foreign Name / Nome Fantasia</td>
                
            </tr>
            <tr>
                <td><%=projetos.getString("projectanalcode")%></td>
                <td><%=projetos.getString("projectname")%></td>
                <td><%=projetos.getString("mcistdcliname")%></td>
                <td><%=projetos.getString("projectstatus")%></td>
                <td><%=projetos.getString("owner")%></td>
                <td><%=projetos.getString("cidade")%></td>
                <td><%=projetos.getString("uf")%></td>
                <td><%=projetos.getString("propreqdate")%></td>
                <td><%=projetos.getString("eventstartdate")%></td>
                <td><%=projetos.getString("eventclosingdate")%></td>
                <td><%=projetos.getString("paxnumber")%></td>
                <td><%=projetos.getString("cancelinsurance")%></td>
                <td><%=projetos.getString("probability")%></td>
                <td><%=projetos.getString("turnoverforowner")%></td>
                <td><%=projetos.getString("gmforowner")%></td>
                <td><%=projetos.getString("gmturnoverperc")%></td>
                <td><%=projetos.getString("weightedprospec")%></td>
                <td><%=projetos.getString("datacadastro")%></td>
                <td><%=projetos.getString("area")%></td>
            </tr>   
            <%
                    response.setContentType("application/vnd.ms-excel");
                    response.setHeader("Content-Disposition", "inline; filename=" + "ProjetosReport.xls");

                }


            %>
        </table>
    </body>
</html>
