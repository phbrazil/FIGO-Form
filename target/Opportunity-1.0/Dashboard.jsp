
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
                                <a class="nav-link" href="Dashboard?type=Open">
                                    <span data-feather="file"></span>
                                    Open
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Dashboard?type=Lost">
                                    <span data-feather="file"></span>
                                    Lost
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Dashboard?type=Confirmed">
                                    <span data-feather="file"></span>
                                    Confirmed
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Dashboard?type=Canceled">
                                    <span data-feather="file"></span>
                                    Canceled
                                </a>
                            </li>

                        </ul>
                    </div>
                </nav>
                <br>

                <div id="chartContainer" style="height: 450px; width:80%;">

                </div>
                
                <!--div id='one'></div-->


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
                    
                    var type = "${type}"

                    var chart = new CanvasJS.Chart("chartContainer",
                            {
                                title: {
                                    text: type + " Projects Percentage"
                                },
                                data: [
                                    {
                                        type: "pie",
                                        dataPoints: [
                                            {x: 10, y: janeiro, label: "Janeiro"},
                                            {x: 20, y: 25, label: "Fevereiro"},
                                            {x: 30, y: 20, label: "Mar�o"},
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

                    chart.render();
                }
            </script>
            <script>
                (function () {
                    var vars = [];
                    var c = new CanvasJS.Chart('one', {
                        data: [{
                                name: 'Base',
                                type: 'pie',
                                markerType: 'none',
                                color: 'rgba(0,0,0,.7)',
                                dataPoints: [{
                                        x: 10,
                                        y: 20
                                    }, {
                                        x: 40,
                                        y: 25
                                    }]
                            }]
                    });

                    c.render();

                    function getGlobals() {
                        var ignore = ['window', 'document', 'InstallTrigger', 'console', 'CanvasJS', 'navigator', 'getInterface', 'external', 'sidebar', 'top', 'location']

                        for (var key in this) {
                            if (this.hasOwnProperty(key) && ignore.indexOf(key) === -1) {
                                vars.push(key);
                            }
                        }
                        return vars;
                    }

                    var globals = getGlobals();

                    console.log(globals, globals.length);

                }).call(this);
            </script>

    </body>
</html>
