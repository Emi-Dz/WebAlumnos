<%-- 
    Document   : view
    Created on : 13 oct. 2022, 16:50:37
    Author     : Juan Cruz
--%>

<%@page import="entity.Persona"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Table 10</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style.css">
        
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
        
    </head>
    <body>
            <%
                HttpSession s = request.getSession();
                String a = (String) s.getAttribute("usuario");
                            
                if (a == null) {
                    response.sendRedirect("login.jsp");
                }
                             
                else {
            %>
            <div class="limiter">
                <div class="container-login100" style="background-image: url('images/bg-01.jpg');">

                    <section class="ftco-section">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-md-6 text-center mb-5">
                                    <h2 class="heading-section">Tabla Personas</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-wrap">
                                        <table class="table table-dark">
                                            <thead>
                                                <tr class="bg-dark">
                                                    <th>Nombre y apellido</th>
                                                    <th>DNI</th>
                                                    <th>Edad</th>
                                                    <th>Profesion</th>
                                                    <th>Eliminar</th>
                                                    <th>Editar</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% 
                                                
                                                List<Persona> listaPersonas = (List) request.getSession().getAttribute("listaPersonas");
                                                for (Persona per : listaPersonas){

                                                %>
                                                <tr class="bg-primary">
                                                    <%String nombreCompleto =  per.getNombre() + " " + per.getApellido();  %>
                                                    <td><%=nombreCompleto%></td>
                                                    <%String dni =  per.getDni();%>
                                                    <td><%= dni%></td>
                                                    <%int edad =  per.getEdad();%>
                                                    <td><%= edad %></td>
                                                    <%String profesion =  per.getProfesion();%>
                                                    <td><%= profesion %></td>
                                                    
                                                    <% String id = per.getId(); %>
                                                    <td>
                                                        <form name="borrar" action="SvBorrar" method="post" style="display:inline" >
                                                            <input type="hidden" name="id" value="<%= id %>" >
                                                            <button type="submit" class="btn btn-danger btn-xs" data-title="Delete" style="display:inline"> 
                                                            Eliminar
                                                            </button> 
                                                        </form>
                                                    </td>
                                                    <td>
                                                        <form name="borrar" action="SvEditar" method="get" style="display:inline" >
                                                            <input type="hidden" name="id" value="<%= id %>" >
                                                            <button type="submit" class="btn btn-danger btn-xs" data-title="Update" style="display:inline"> 
                                                            Editar
                                                            </button> 
                                                        </form>
                                                    </td>
                                                </tr>
                                                   <%}%>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>


                    

                </div>

            </div>
<%}%>
            <script src="js/jquery.min.js"></script>
            <script src="js/popper.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/main.js"></script>
            
            
        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
    </body>
</html>
