<%-- 
    Created on : june 20, 2018, 11:13:17 PM
    Author     : paulo.bezerra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="topodapagina.css" rel="stylesheet">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MCI Brasil</title>
    </head>
    <body id="page-top">
        <style>
            .dropdown {
                position: relative;
                display: inline-block;

            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 190px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                padding: 12px 16px;
                z-index: 1;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }
        </style>
        <div id="includedContent"></div>


        <nav class="navbar navbar-expand-lg navbar-dark bg-info" id="sideNav">

            <a class="navbar-brand js-scroll-trigger" href="Home.jsp">
               <span class="d-block d-lg-block">Bem-Vindo <!--c:out value="${userName}" /--></span>
                <span class="d-none d-lg-block">

                </span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <ul class="navbar-nav">
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="nav-link js-scroll-trigger">Consultas</a>
                        <div class="dropdown-content">
                            <p><a href="ConsultaProjeto.jsp" style="text-decoration:none;">Projetos</a></p>
                            <p><a href="Home.jsp" style="text-decoration:none;">Client Mapping</a></p>
                            <p><a href="Home.jsp" style="text-decoration:none;">Clientes</a></p>
                            <p><a href="Home.jsp" style="text-decoration:none;">Prospects</a></p>
                            <p><a href="Home.jsp" style="text-decoration:none;">Suspects</a></p>

                        </div>
                    </div>

                </li>

                <li class="nav-item">
                    <div class="dropdown">
                        <a class="nav-link js-scroll-trigger">Cadastrar</a>
                        <div class="dropdown-content">
                            <p><a href="CadastrarProjeto.jsp" style="text-decoration:none;">Projeto</a></p>
                            <p><a href="CadastrarClientMapping.jsp" style="text-decoration:none;">Client Mapping</a></p>
                            <p><a href="CadastrarCliente.jsp" style="text-decoration:none;">Clientes</a></p>
                            <p><a href="CadastrarCliente.jsp" style="text-decoration:none;">Prospects</a></p>
                            <p><a href="CadastrarCliente.jsp" style="text-decoration:none;">Suspects</a></p>

                            
                        </div>
                    </div>

                </li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="nav-link js-scroll-trigger">Relatórios</a>
                        <div class="dropdown-content">
                            <p><a href="Exportar?acaoreport=ListarProjetos" style="text-decoration:none;">Listar Projetos</a></p>
                            <p><a href="Exportar?acaoreport=ListarClientMapping" style="text-decoration:none;">Listar Client Mapping</a></p>
                            <p><a href="Exportar?acaoreport=ListarClientes" style="text-decoration:none;">Listar Clientes Ativos</a></p>
                            <p><a href="Exportar?acaoreport=ListarProspects" style="text-decoration:none;">Listar Prospects</a></p>
                            <p><a href="Exportar?acaoreport=ListarSuspects" style="text-decoration:none;">Listar Suspects</a></p>

                        </div>
                    </div>




                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="Logout.jsp">Sair</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger">${vendedor}</a>
                </li>
            </ul>
        </nav>



        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="../../../../assets/js/vendor/popper.min.js"></script>
        <script src="../../../../dist/js/bootstrap.min.js"></script>
        <script src="../../../../assets/js/vendor/holder.min.js"></script>

    </div>        
</body>
</html>
