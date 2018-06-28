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
        <h1>Listagem de ClientMapping</h1>

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

                ResultSet clientmapping = (ResultSet) request.getAttribute("clientmapping");

                while (clientmapping.next()) {


            %>
            <tr>
                    <td><%=clientmapping.getString("mappingid")%></td>
                    <td><%=clientmapping.getString("nomecliente")%></td>
                    <td><%=clientmapping.getString("businessmanager")%></td>
                    <td><%=clientmapping.getString("accountmanager")%></td>
                    <td><%=clientmapping.getString("creator")%></td>
                    <td><%=clientmapping.getString("questao1")%></td>
                    <td><%=clientmapping.getString("questao2")%></td>
                    <td><%=clientmapping.getString("questao3")%></td>
                    <td><%=clientmapping.getString("questao4")%></td>
                    <td><%=clientmapping.getString("questao5")%></td>
                    <td><%=clientmapping.getString("questao6")%></td>
                    <td><%=clientmapping.getString("questao7")%></td>
                    <td><%=clientmapping.getString("questao8")%></td>
                    <td><%=clientmapping.getString("questao9")%></td>
                    <td><%=clientmapping.getString("questao10")%></td>
                    <td><%=clientmapping.getString("questao11")%></td>
            </tr>   
            <%
                    response.setContentType("application/vnd.ms-excel");
                    response.setHeader("Content-Disposition", "inline; filename=" + "ClientMappingReport.xls");

                }


            %>
        </table>
    </body>
</html>
