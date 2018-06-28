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
        <h1>Listagem de Suspects</h1>

        <table>
            <tr>
                <td>Empresa</td>
                <td>Nome do Contato</td>
                <td>Telefone 1</td>
                <td>Telefone 2</td>
                <td>Email</td>
                <td>Cargo/Dpto</td>
                <td>Nacional / Internacional</td>
                <td>Eventos</td>
                <td>Incentivos</td>
                <td>Contato MCI</td>
                <td>Data Cadastro</td>
                <td>User</td>
            </tr>

            <%

                ResultSet suspects = (ResultSet) request.getAttribute("suspects");

                while (suspects.next()) {


            %>
            <tr>
                <td><%=suspects.getString("empresa")%></td>
                <td><%=suspects.getString("nomecontato")%></td>
                <td><%=suspects.getString("telefone1")%></td>
                <td><%=suspects.getString("telefone2")%></td>
                <td><%=suspects.getString("email")%></td>
                <td><%=suspects.getString("cargo")%></td>
                <td><%=suspects.getString("origem")%></td>
                <td><%=suspects.getString("eventos")%></td>
                <td><%=suspects.getString("incentivos")%></td>
                <td><%=suspects.getString("contatomci")%></td>
                <td><%=suspects.getString("datacadastro")%></td>
                <td><%=suspects.getString("user")%></td>

            </tr>   
            <%
                    response.setContentType("application/vnd.ms-excel");
                    response.setHeader("Content-Disposition", "inline; filename=" + "SuspectsReport.xls");

                }


            %>
        </table>
    </body>
</html>
