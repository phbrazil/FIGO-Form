<%-- 
    Created on : june 20, 2018, 11:13:17 PM
    Author     : paulo.bezerra
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <style>
            .button {
                background-color: #33CCCC;
                border: none;
                color: white;
                padding: 8px 16px;
                text-align: center;
                font-size: 16px;
                margin: 4px 2px;
                opacity: 0.6;
                transition: 0.3s;
                display: inline-block;
                text-decoration: none;
                cursor: pointer;
            }

            .button:hover {opacity: 2}
        </style>
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/tableprod.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/topodapagina.css" rel="stylesheet">
    <form name = "ConsultaCli" method="POST" >

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Propostas</title>
    </head>
    <body id="page-top">

        <%@include  file="navbar.jsp" %>

        <div align ="center">
            <br>
            <h2>Listagem de Clients Mapping</h2>
            <font size="1" face="Arial" >
            <table border='2' cellpadding='10' width='1100'>
                <tr>
                    <td  bgcolor="#33CCCC">Linha</td>
                    <td  bgcolor="#33CCCC" align = "center">Código do Mapeamento</td>
                    <td  bgcolor="#33CCCC" align = "center">Nome do Cliente</td>
                    <td  bgcolor="#33CCCC" align = "center">Business Manager</td>
                    <td  bgcolor="#33CCCC" align = "center">Account Manager</td>
                    <td  bgcolor="#33CCCC" align = "center">Creator</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 1</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 2</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 3</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 4</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 5</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 6</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 7</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 8</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 9</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 10</td>
                    <td  bgcolor="#33CCCC" align = "center">Questao 11</td>

                    <!--td><button type="submit" class="button" name ="acaoreport" value="ExportClientMapping" formaction="Exportar">Exportar</button></td-->
                    <td><a href="Exportar?acaoreport=ExportClientMapping" style="text-decoration:none;">Exportar</td>

                </tr>
                <%
                    ResultSet clientmapping = (ResultSet) request.getAttribute("clientmapping");
                    int linha = 1;
                    while (clientmapping.next()) {


                %>
                <tr>

                    <td><%=linha%></td>
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

                    <td><button type="submit" class="button" formaction="ConsultaClientMapping?mappingid=<%=clientmapping.getString("mappingid")%>">Alterar</button></td>

                    <%

                            linha++;
                        }

                    %>
            </table>
        </div>



        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-1">&copy; MCI Brasil</p>

        </footer>
        </div>

</form>
</body>


<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="../../../../assets/js/vendor/popper.min.js"></script>
<script src="../../../../dist/js/bootstrap.min.js"></script>
<script src="../../../../assets/js/vendor/holder.min.js"></script>


</html>