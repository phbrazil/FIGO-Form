<%-- 
    Created on : june 20, 2018, 11:13:17 PM
    Author     : paulo.bezerra
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Export</title>
    </head>
    <body>
        <h1>Listagem de Company Information</h1>

        <table>

            <tr>
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
            </tr>

            <%

                ResultSet companyinformation = (ResultSet) request.getAttribute("companyinformation");

                String dataatual = new SimpleDateFormat("yyyy-MM-dd_hh:mm:ss").format(Calendar.getInstance().getTime());

                while (companyinformation.next()) {


            %>
            <tr>
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
            </tr>   
            <%
                    response.setContentType("application/vnd.ms-excel");
                    response.setHeader("Content-Disposition", "inline; filename=" + "CompanyInformation_"+dataatual+".xls");

                }


            %>
        </table>
    </body>
</html>
