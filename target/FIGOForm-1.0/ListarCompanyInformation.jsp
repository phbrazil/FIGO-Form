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
        <title>Listar Company Information</title>
    </head>
    <body id="page-top">

        <%@include  file="navbar.jsp" %>

        <div align ="center">
            <br>
            <h2>Listagem de Company Information</h2>
            <font size="1" face="Arial" >
            <table border='2' cellpadding='10' width='1100'>
                <tr>
                    <td  bgcolor="#33CCCC">Linha</td>
                    <td  bgcolor="#33CCCC" align = "center">CNPJ</td>
                    <td  bgcolor="#33CCCC" align = "center">Nome Fantasia</td>
                    <td  bgcolor="#33CCCC" align = "center">Razao Social</td>
                    <td  bgcolor="#33CCCC" align = "center">Area Atuação</td>
                    <td  bgcolor="#33CCCC" align = "center">CEP</td>
                    <td  bgcolor="#33CCCC" align = "center">Rua</td>
                    <td  bgcolor="#33CCCC" align = "center">Numero</td>
                    <td  bgcolor="#33CCCC" align = "center">Complemento</td>
                    <td  bgcolor="#33CCCC" align = "center">Bairro</td>
                    <td  bgcolor="#33CCCC" align = "center">Cidade</td>
                    <td  bgcolor="#33CCCC" align = "center">Estado</td>
                    <td  bgcolor="#33CCCC" align = "center">Pais</td>
                    <td  bgcolor="#33CCCC" align = "center">DDI 1</td>
                    <td  bgcolor="#33CCCC" align = "center">DDD 1</td>
                    <td  bgcolor="#33CCCC" align = "center">Telefone 1</td>
                    <td  bgcolor="#33CCCC" align = "center">DDI 2</td>
                    <td  bgcolor="#33CCCC" align = "center">Telefone 2</td>
                    <td  bgcolor="#33CCCC" align = "center">DDI Celular</td>
                    <td  bgcolor="#33CCCC" align = "center">DDD Celular</td>
                    <td  bgcolor="#33CCCC" align = "center">Celular</td>
                    <td  bgcolor="#33CCCC" align = "center">DDI FAX</td>
                    <td  bgcolor="#33CCCC" align = "center">DDD FAX</td>
                    <td  bgcolor="#33CCCC" align = "center">FAX</td>
                    <td  bgcolor="#33CCCC" align = "center">Site</td>
                    <td  bgcolor="#33CCCC" align = "center">Email</td>
                    <td  bgcolor="#33CCCC" align = "center">Email Contato</td>
                    <td  bgcolor="#33CCCC" align = "center">OBS</td>
                    <td  bgcolor="#33CCCC" align = "center">Contato</td>
                    <td  bgcolor="#33CCCC" align = "center">User</td>
                    <td  bgcolor="#33CCCC" align = "center">Cargo</td>

                    <td><a href="Exportar?acaoreport=ExportCompanyInformation" style="text-decoration:none;">Exportar</td>

                </tr>
                <%
                    ResultSet companyinformation = (ResultSet) request.getAttribute("companyinformation");
                    int linha = 1;
                    while (companyinformation.next()) {


                %>
                <tr>

                    <td><%=linha%></td>
                    <td><%=companyinformation.getString("cnpj")%></td>
                    <td><%=companyinformation.getString("nomefantasia")%></td>
                    <td><%=companyinformation.getString("razaosocial")%></td>
                    <td><%=companyinformation.getString("areaatuacao")%></td>
                    <td><%=companyinformation.getString("cep")%></td>
                    <td><%=companyinformation.getString("rua")%></td>
                    <td><%=companyinformation.getString("numero")%></td>
                    <td><%=companyinformation.getString("complemento")%></td>
                    <td><%=companyinformation.getString("bairro")%></td>
                    <td><%=companyinformation.getString("cidade")%></td>
                    <td><%=companyinformation.getString("estado")%></td>
                    <td><%=companyinformation.getString("pais")%></td>
                    <td><%=companyinformation.getString("ddi1")%></td>
                    <td><%=companyinformation.getString("ddd1")%></td>
                    <td><%=companyinformation.getString("telefone1")%></td>
                    <td><%=companyinformation.getString("ddi2")%></td>
                    <td><%=companyinformation.getString("ddd2")%></td>
                    <td><%=companyinformation.getString("telefone2")%></td>
                    <td><%=companyinformation.getString("ddicelular")%></td>
                    <td><%=companyinformation.getString("dddcelular")%></td>
                    <td><%=companyinformation.getString("celular")%></td>
                    <td><%=companyinformation.getString("ddifax")%></td>
                    <td><%=companyinformation.getString("dddfax")%></td>
                    <td><%=companyinformation.getString("fax")%></td>
                    <td><%=companyinformation.getString("site")%></td>
                    <td><%=companyinformation.getString("email")%></td>
                    <td><%=companyinformation.getString("emailcontato")%></td>
                    <td><%=companyinformation.getString("obs")%></td>
                    <td><%=companyinformation.getString("contato")%></td>
                    <td><%=companyinformation.getString("user")%></td>
                    <td><%=companyinformation.getString("cargo")%></td>

                    <td><button type="submit" class="button" formaction="ConsultaClientMapping?companyid=<%=companyinformation.getString("companyid")%>">Alterar</button></td>

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