<%-- 
    Created on : Mar 29, 2018, 12:13:17 PM
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
        <title>Listar Projetos</title>
    </head>
    <body id="page-top">

        <%@include  file="navbar.jsp" %>

        <div align ="center">
            <br>
            <h2>Listagem de Projetos</h2>
            <font size="1" face="Arial" >
            <table border='2' cellpadding='10' width='1100'>
                <tr>
                    <td  bgcolor="#33CCCC">Linha</td>
                    <td  bgcolor="#33CCCC" align = "center">Código do Projeto</td>
                    <td  bgcolor="#33CCCC" align = "center">Nome do Projeto</td>
                    <td  bgcolor="#33CCCC" align = "center">Nome do Cliente</td>
                    <td  bgcolor="#33CCCC" align = "center">Status do Projeto</td>
                    <td  bgcolor="#33CCCC" align = "center">Owner do Projeto</td>
                    <td  bgcolor="#33CCCC" align = "center">Cidade</td>
                    <td  bgcolor="#33CCCC" align = "center">UF</td>
                    <td  bgcolor="#33CCCC" align = "center">Prop Request DATE</td>
                    <td  bgcolor="#33CCCC" align = "center">Event Start Date</td>
                    <td  bgcolor="#33CCCC" align = "center">Event Closing Date</td>
                    <td  bgcolor="#33CCCC" align = "center">Pax Number</td>
                    <td  bgcolor="#33CCCC" align = "center">Cancel Insurance</td>
                    <td  bgcolor="#33CCCC" align = "center">Probability</td>
                    <td  bgcolor="#33CCCC" align = "center">Turn Over forecast Owner</td>
                    <td  bgcolor="#33CCCC" align = "center">GM forecast Owner</td>
                    <td  bgcolor="#33CCCC" align = "center">GM Turn Over Perc</td>
                    <td  bgcolor="#33CCCC" align = "center">Weighted Prospec</td>
                    <td  bgcolor="#33CCCC" align = "center">Data Cadastro
                    <td  bgcolor="#33CCCC" align = "center">Area</td>
                    <td  bgcolor="#33CCCC" align = "center">Alterar</td> 
                    <!--td><button type="submit" class="button" name ="acaoreport" value="ExportProjetos" formaction="Exportar">Exportar</button></td-->
                    <td><a href="Exportar?acaoreport=ExportProjetos" style="text-decoration:none;">Exportar</td>

                </tr>
                <%
                    ResultSet projetos = (ResultSet) request.getAttribute("projetos");
                    int linha = 1;
                    while (projetos.next()) {


                %>
                <tr>

                    <%  if (projetos.getString("projectstatus").toUpperCase().contains("OPEN")) {


                    %>

                    <td bgcolor="#00FF00"><%=linha%></td>
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
                    <td><button type="submit" class="button" formaction="ConsultaCli?cpfcliente=<%=projetos.getString("projectname")%>">Alterar</button></td>
                <tr>
                    <%
                    } else if (projetos.getString("projectstatus").toUpperCase().contains("LOST")) {

                    %>
                    <td bgcolor="#ff0000"><%=linha%></td>
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
                    <td><button type="submit" class="button" formaction="ConsultaCli?cpfcliente=<%=projetos.getString("projectname")%>">Alterar</button></td>

                    <%

                    } else {

                    %>                    
                    <td><%=linha%></td>
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
                    <td><button type="submit" class="button" formaction="ConsultaCli?cpfcliente=<%=projetos.getString("projectname")%>">Alterar</button></td>

                    <%

                            }
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