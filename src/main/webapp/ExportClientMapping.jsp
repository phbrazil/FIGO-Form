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
        <h1>Report Propotas</h1>

        <table>

            <tr>
                    <td>Código da Proposta</td>
                    <td>Nome do Cliente</td>
                    <td>Business Manager</td>
                    <td>Account Manager</td>
                    <td>Creator</td>
                    <td>Questao1</td>
                    <td>Questao2</td>
                    <td>Questao3</td>
                    <td>Questao4</td>
                    <td>Questao5</td>
                    <td>Questao6</td>
                    <td>Questao7</td>
                    <td>Questao8</td>
                    <td>Questao9</td>
                    <td>Questao10</td>
                    <td>Questao11</td>
            </tr>

            <%

                ResultSet propostas = (ResultSet) request.getAttribute("propostas");

                while (propostas.next()) {


            %>
            <tr>
                    <td><%=propostas.getString("mappingid")%></td>
                    <td><%=propostas.getString("nomecliente")%></td>
                    <td><%=propostas.getString("businessmanager")%></td>
                    <td><%=propostas.getString("accountmanager")%></td>
                    <td><%=propostas.getString("creator")%></td>
                    <td><%=propostas.getString("questao1")%></td>
                    <td><%=propostas.getString("questao2")%></td>
                    <td><%=propostas.getString("questao3")%></td>
                    <td><%=propostas.getString("questao4")%></td>
                    <td><%=propostas.getString("questao5")%></td>
                    <td><%=propostas.getString("questao6")%></td>
                    <td><%=propostas.getString("questao7")%></td>
                    <td><%=propostas.getString("questao8")%></td>
                    <td><%=propostas.getString("questao9")%></td>
                    <td><%=propostas.getString("questao10")%></td>
                    <td><%=propostas.getString("questao11")%></td>
            </tr>   
            <%
                    response.setContentType("application/vnd.ms-excel");
                    response.setHeader("Content-Disposition", "inline; filename=" + "PropostasReport.xls");

                }


            %>
        </table>
    </body>
</html>
