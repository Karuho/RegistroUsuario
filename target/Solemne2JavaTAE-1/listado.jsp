<%-- 
    Document   : listado
    Created on : 06-06-2021, 18:12:36
    Author     : Carlos
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="cl.solemne2.entity.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  List<Registro> listadoUsuarios = (List<Registro>)request.getAttribute("listadoUsuarios"); 
    if (listadoUsuarios == null){
        response.sendRedirect("index.jsp");
    }
    Iterator<Registro> itUsuarios = listadoUsuarios.iterator();%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Usuarios</title>
        <script type="text/javascript" src="js/validaciones.js"></script>
        <link type="text/css" rel="stylesheet" href="css/estilos.css" media="screen" /></link>
    </head>
    <body>
        <form name="frmRegistro" id="frmRegistro" action="RegistroController" method="POST">
            <table border="0" cellspacing="0" cellpadding="5" align="center" width="50%" height="100%">
                <tr>
                    <td align="center">
                        <fieldset>
                            <legend>Lista de Usuarios</legend>
                            <table class="datosTabla" border="0" cellspacing="1" cellpadding="2" bgcolor="#f2f2f2" width="100%" height="100%">
                                <tr>
                                    <td align="center" class="tituloTabla" width="80px" height="20px" bgcolor="#2BAABB">Usuario</td>
                                    <td align="center" class="tituloTabla" width="80px" height="20px" bgcolor="#2BAABB">Contraseña</td>
                                    <td align="center" class="tituloTabla" width="80px" height="20px" bgcolor="#2BAABB">Rut</td>
                                    <td align="center" class="tituloTabla" width="15px" height="20px" bgcolor="#2BAABB">Edad</td>
                                    <td align="center" class="tituloTabla" width="120px" height="20px" bgcolor="#2BAABB">Correo electrónico</td>
                                    <td align="center" class="tituloTabla" width="80px" height="20px" colspan="2" bgcolor="#2BAABB">Edición</td>
                                </tr>
                                <% while (itUsuarios.hasNext()){
             Registro listado = itUsuarios.next(); %>    
                                <tr bgcolor="#FFF">
                                    <td align="center" width="80px" height="20px"><%=listado.getUsername()%></td>
                                    <td align="center" width="80px" height="20px"><%=listado.getPass()%></td>
                                    <td align="center" width="80px" height="20px"><%=listado.getRut()%></td>
                                    <td align="center" width="15px" height="20px"><%=listado.getEdad()%></td>
                                    <td align="center" width="120px" height="20px"><%=listado.getCorreo()%></td>
                                    <td align="center" width="80px" height="20px">
                                        <a href="EditarController?rut=<%=listado.getRut()%>">Editar</a> /
                                        <a href="EliminarController?rut=<%=listado.getRut()%>">Eliminar</a>
                                    </td>
                                </tr>
                                <%          }           %>
                            </table>
                            <br>
                        </fieldset>
                    </td>
                </tr>
            </table>
            <br>
            <table border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                    <td align="center" colspan="2">
                        <input type="button" name="btnHome" id="btnHome" value="Ir a Home" class="boton" tabindex="5" onclick="fnHome();">
                    </td>
                </tr>
            </table>
        </form>                            </body>
</html>
