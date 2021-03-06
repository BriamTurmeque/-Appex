<%-- 
    Document   : 
    Created on : 14/09/2021, 7:13:43 a. m.
    Author     : 
--%>


<%@page import="logica.LogicaEmpresa"%>
<%@page import="logica.Empresa"%>
<html>
    <%//este se modifico %>

    <head>
       <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Public+Sans:wght@200&family=Roboto&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="estilos/estilo.css">
        <link rel="stylesheet" href="estilos/cajas.css">
        <link rel="stylesheet" href="estilos/estilosMenu.css">

        <link rel="apple-touch-icon" sizes="57x57" href="src/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="src/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="src/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="src/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="src/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="src/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="src/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="src/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="src/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="src/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="src/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="src/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="src/favicon-16x16.png">

        <meta name="theme-color" content="#f5af19">
        <meta name="msapplication-TileColor" content="#f5af19">
        <meta name="msapplication-TileImage" content="src/ms-icon-144x144.png">

        <title>AppEx</title>
    </head>
    <body>
        <div class="body">
            <div class="cards text-center">
                <%
                    String nitEmpresaPredeterminada = request.getParameter("nitEmpresaPredeterminada");
                    String nombreEmpresa = request.getParameter("nombreEmpresa");
                    String nit = request.getParameter("nit");
                    String nombreRepLegal = request.getParameter("nombreRepLegal");
                    String noIdentidad = request.getParameter("noIdentidad");
                    int tipoEmpresa = Integer.parseInt(request.getParameter("tipoEmpresa"));
                    int codigoCiiu = Integer.parseInt(request.getParameter("codigoCiiu"));
                    int estadoEmpresa = Integer.parseInt(request.getParameter("estadoEmpresa"));
                    String departamento = request.getParameter("departamento");
                    String ciudadMunicipio = request.getParameter("ciudadMunicipio");
                    Empresa e = null;
                    e = new Empresa(nombreEmpresa, nit, nombreRepLegal, noIdentidad, tipoEmpresa, codigoCiiu, estadoEmpresa, departamento, ciudadMunicipio);
                    LogicaEmpresa LogicaEmpresa = new LogicaEmpresa();
                    boolean guardado = LogicaEmpresa.guardarEmpresa(e);
                    if (guardado == true) {%>
                <p>Empresa guardada exitosamente</p> 
                <%} else {%>
                <p>Informaci?n de Empresa no se guard?.</p>
                <%}%>
                <br>
                <a href="dashboard.jsp?nitEmpresaPredeterminada=<%=nit%>"><button type="submit" class="btn btn-primary" id="btnSubmit">Volver</button></a>
            </div>
        </div>
    </body>
</html>

