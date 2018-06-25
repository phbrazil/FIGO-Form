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
        <h1>Report Prospects</h1>

        <table>
            <tr>
                <td>Empresa</td>
                <td>Nome do Contato</td>
                <td>Telefone 1</td>
                <td>Telefone 2</td>
                <td>Email</td>
                <td>Cargo/Dpto</td>
                <td>Nacional / Internacional</td>
                <td>HUB</td>
                <td>Travel</td>
                <td>Contato MCI</td>
                <td>Data Cadastro</td>
                <td>User</td>
            </tr>

            <%

                ResultSet prospects = (ResultSet) request.getAttribute("prospects");

                while (prospects.next()) {


            %>
            <tr>
                <td><%=prospects.getString("empresa")%></td>
                <td><%=prospects.getString("nomecontato")%></td>
                <td><%=prospects.getString("telefone1")%></td>
                <td><%=prospects.getString("telefone2")%></td>
                <td><%=prospects.getString("email")%></td>
                <td><%=prospects.getString("cargo")%></td>
                <td><%=prospects.getString("origem")%></td>
                <td><%=prospects.getString("hub")%></td>
                <td><%=prospects.getString("travel")%></td>
                <td><%=prospects.getString("contatomci")%></td>
                <td><%=prospects.getString("datacadastro")%></td>
                <td><%=prospects.getString("user")%></td>

            </tr>   
            <%
                    response.setContentType("application/vnd.ms-excel");
                    response.setHeader("Content-Disposition", "inline; filename=" + "ProspectsReport.xls");

                }


            %>
        </table>
    </body>
</html>
