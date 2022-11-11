<%-- 
    Document   : register
    Created on : 18 oct. 2022, 17:04:30
    Author     : Juan Cruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="colorlib-regform-5/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="colorlib-regform-5/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="colorlib-regform-5/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="colorlib-regform-5/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="colorlib-regform-5/css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Event Registration Form</h2>
                </div>
                <div class="card-body">
                    <form method="POST" action="SvPersona">
                        <div class="form-row m-b-55">
                            <div class="name">Nombre</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="nombre">
                                            <label class="label--desc">Nombre</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="apellido">
                                            <label class="label--desc">Apellido</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">DNI</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="dni">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Edad</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="edad">
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Profesión</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="profesion">
                                </div>
                            </div>
                        </div>
                        
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="colorlib-regform-5/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="colorlib-regform-5/vendor/select2/select2.min.js"></script>
    <script src="colorlib-regform-5/vendor/datepicker/moment.min.js"></script>
    <script src="colorlib-regform-5/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="colorlib-regform-5/js/global.js"></script>
    </body>
</html>
