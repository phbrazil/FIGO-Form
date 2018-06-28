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
        <title>Listar Suspects</title>
    </head>
    <body id="page-top">

        <%@include  file="navbar.jsp" %>

        <div align ="center">
            <br>
            <h2>Listagem de Suspetcs</h2>
            <font size="1" face="Arial" >
            <table border='2' cellpadding='10' width='1100'>
                <tr>
                    <td  bgcolor="#33CCCC">Linha</td>
                    <td  bgcolor="#33CCCC" align = "center">Empresa</td>
                    <td  bgcolor="#33CCCC" align = "center">Nome do Contato</td>
                    <td  bgcolor="#33CCCC" align = "center">Telefone 1</td>
                    <td  bgcolor="#33CCCC" align = "center">Telefone 2</td>
                    <td  bgcolor="#33CCCC" align = "center">Email</td>
                    <td  bgcolor="#33CCCC" align = "center">Cargo/Dpto</td>
                    <td  bgcolor="#33CCCC" align = "center">Nacional / Internacional</td>
                    <td  bgcolor="#33CCCC" align = "center">Eventos</td>
                    <td  bgcolor="#33CCCC" align = "center">Incentivos</td>
                    <td  bgcolor="#33CCCC" align = "center">Contato MCI</td>
                    <td  bgcolor="#33CCCC" align = "center">Data Cadastro</td>
                    <td  bgcolor="#33CCCC" align = "center">User</td>

                    <td><a href="Exportar?acaoreport=ExportSuspects" style="text-decoration:none;">Exportar</td>

                </tr>
                <%
                    ResultSet suspects = (ResultSet) request.getAttribute("suspects");
                    int linha = 1;
                    while (suspects.next()) {


                %>
                <tr>

                    <td><%=linha%></td>
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
                    <td><button type="submit" class="button" formaction="ConsultaSuspects?=<%=suspects.getString("suspectid")%>">Alterar</button></td>

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