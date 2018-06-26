
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title>Quick Dashboard</title>
        
        
        <!--ESSE SITE AQUI AJUDA A FORMATAR-->
        <!--https://canvasjs.com/docs/charts/basics-of-creating-html5-chart/labels-index-labels/-->

        <!-- Bootstrap core CSS -->
        <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="dashboard.css" rel="stylesheet">
    </head>
    <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>


    <body>
        <%@include  file="navbar.jsp" %>
        <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
            <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">MCI Brasil</a>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                    <div class="sidebar-sticky">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="Exportar?acaoreport=ListarProjetos">
                                    <span data-feather="home"></span>
                                    Projects <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <span data-feather="file"></span>
                                    Open
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <span data-feather="file"></span>
                                    Closed
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <span data-feather="file"></span>
                                    Confirmed
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <span data-feather="file"></span>
                                    Canceled
                                </a>
                            </li>

                        </ul>
                    </div>
                </nav>
                <br>

                <div id="chartContainerWon" style="height: 450px; width:80%;">

                </div>

            </div>

            <!-- Bootstrap core JavaScript
            ================================================== -->
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
            <script src="../../assets/js/vendor/popper.min.js"></script>
            <script src="../../dist/js/bootstrap.min.js"></script>

            <!-- Icons -->
            <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
            <script>
                feather.replace()
            </script>

            <!-- Graphs -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>



            <script type="text/javascript">
                window.onload = function () {
                    var janeiro = "${janeiro}"
                    var fevereiro = "${fevereiro}"
                    var marco = "${marco}"
                    var abril = "${abril}"
                    var maio = "${maio}"
                    var junho = "${junho}"
                    var julho = "${julho}"
                    var agosto = "${agosto}"
                    var setembro = "${setembro}"
                    var outubro = "${outubro}"
                    var novembro = "${novembro}"
                    var dezembro = "${dezembro}"
                    
                    var teste = 15
                    var chartwon = new CanvasJS.Chart("chartContainerWon",
                            {
                                title: {
                                    text: "Won Projects Percentage"
                                },
                                data: [
                                    {
                                        type: "pie",
                                        dataPoints: [
                                            {x: 10, y: teste, label: "Janeiro"},
                                            {x: 20, y: 25, label: "Fevereiro"},
                                            {x: 30, y: 20, label: "Março"},
                                            {x: 40, y: 25, label: "Abril"},
                                            {x: 50, y: 27, label: "Maio"},
                                            {x: 60, y: 28, label: "Junho"},
                                            {x: 70, y: 28, label: "Julho"},
                                            {x: 80, y: 24, label: "Agosto"},
                                            {x: 90, y: 26, label: "Setembro"},
                                            {x: 100, y: 26, label: "Outubro"},
                                            {x: 110, y: 26, label: "Novembro"},
                                            {x: 120, y: 26, label: "Dezembro"}

                                        ]
                                    },
                                ]
                            });

                    chartwon.render();
            }
            </script>

    </body>
</html>
