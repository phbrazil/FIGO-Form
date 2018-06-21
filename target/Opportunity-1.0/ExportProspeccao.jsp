<%-- 
    Document   : Export
    Created on : May 31, 2018, 2:10:32 PM
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
        <h1>Report Prospecção</h1>

        <table>

            <tr>
                    <td>Código da Prospeccao</td>
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

                ResultSet prospeccao = (ResultSet) request.getAttribute("prospeccao");

                while (prospeccao.next()) {


            %>
            <tr>
                    <td><%=prospeccao.getString("prospeccaoid")%></td>
                    <td><%=prospeccao.getString("nomecliente")%></td>
                    <td><%=prospeccao.getString("businessmanager")%></td>
                    <td><%=prospeccao.getString("accountmanager")%></td>
                    <td><%=prospeccao.getString("creator")%></td>
                    <td><%=prospeccao.getString("questao1")%></td>
                    <td><%=prospeccao.getString("questao2")%></td>
                    <td><%=prospeccao.getString("questao3")%></td>
                    <td><%=prospeccao.getString("questao4")%></td>
                    <td><%=prospeccao.getString("questao5")%></td>
                    <td><%=prospeccao.getString("questao6")%></td>
                    <td><%=prospeccao.getString("questao7")%></td>
                    <td><%=prospeccao.getString("questao8")%></td>
                    <td><%=prospeccao.getString("questao9")%></td>
                    <td><%=prospeccao.getString("questao10")%></td>
                    <td><%=prospeccao.getString("questao11")%></td>
            </tr>   
            <%
                    response.setContentType("application/vnd.ms-excel");
                    response.setHeader("Content-Disposition", "inline; filename=" + "ProspeccaoReport.xls");

                }


            %>
        </table>
    </body>
</html>
