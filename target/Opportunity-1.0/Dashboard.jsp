
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title>Dashboard Template for Bootstrap</title>

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
                                <a class="nav-link active" href="#">
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

                <div id="chartContainer" style="height: 450px; width:80%;">

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
                    var chart = new CanvasJS.Chart("chartContainer",
                            {
                                title: {
                                    text: "Quick DashBoard"
                                },
                                data: [
                                    {
                                        type: "line",
                                        dataPoints: [
                                            {x: 10, y: 21},
                                            {x: 20, y: 25},
                                            {x: 30, y: 20},
                                            {x: 40, y: 25},
                                            {x: 50, y: 27},
                                            {x: 60, y: 28},
                                            {x: 70, y: 28},
                                            {x: 80, y: 24},
                                            {x: 90, y: 26}

                                        ]
                                    },
                                    {
                                        type: "line",
                                        dataPoints: [
                                            {x: 10, y: 31},
                                            {x: 20, y: 35},
                                            {x: 30, y: 30},
                                            {x: 40, y: 35},
                                            {x: 50, y: 35},
                                            {x: 60, y: 38},
                                            {x: 70, y: 38},
                                            {x: 80, y: 34},
                                            {x: 90, y: 44}

                                        ]
                                    },
                                    {
                                        type: "line",
                                        dataPoints: [
                                            {x: 10, y: 45},
                                            {x: 20, y: 50},
                                            {x: 30, y: 40},
                                            {x: 40, y: 45},
                                            {x: 50, y: 45},
                                            {x: 60, y: 48},
                                            {x: 70, y: 43},
                                            {x: 80, y: 41},
                                            {x: 90, y: 28}

                                        ]
                                    },
                                    {
                                        type: "line",
                                        dataPoints: [
                                            {x: 10, y: 71},
                                            {x: 20, y: 55},
                                            {x: 30, y: 50},
                                            {x: 40, y: 65},
                                            {x: 50, y: 95},
                                            {x: 60, y: 68},
                                            {x: 70, y: 28},
                                            {x: 80, y: 34},
                                            {x: 90, y: 14}

                                        ]
                                    }
                                ]
                            });

                    chart.render();
                }
            </script>
    </body>
</html>
