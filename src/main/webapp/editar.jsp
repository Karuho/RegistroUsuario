<%-- 
    Document   : editar
    Created on : 06-06-2021, 18:12:05
    Author     : Carlos
--%>

<%@page import="cl.solemne2.entity.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  Registro datosUsuarios = (Registro) request.getAttribute("datosUsuarios");
    if (datosUsuarios == null) {
        response.sendRedirect("ListarController");
    }%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Registro</title>
        <script type="text/javascript" src="js/validaciones.js"></script>
        <link type="text/css" rel="stylesheet" href="css/estilos.css" media="screen" /></link>
    </head>
    <body>
        <form name="frmRegistro" id="frmRegistro" action="EditarController" method="POST">
            <table class="tablaExterna" border="0" cellspacing="0" cellpadding="5" align="center" width="650" height="350">
                <tr>
                    <td align="center">
                        <fieldset><legend>Edición de registro</legend>
                            <table class="table extBorder" align="center" cellpadding="2" cellspacing="1" border="0" widht="500">
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Nombre de Usuario:
                                    </td>
                                    <td>
                                        <input type="text" id="txtUsuario" name="txtUsuario" maxlength="50" class="boxText" value="<%= datosUsuarios.getUsername() %>">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Contraseña:
                                    </td>
                                    <td>
                                        <input type="password" id="txtContrasena" name="txtContrasena" maxlength="30" class="boxText" value="<%= datosUsuarios.getPass() %>">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Rut:
                                    </td>
                                    <td>
                                        <input type="text" id="txtRut" name="txtRut" maxlength="10" class="boxNoEditable" style="width: 150px;" tabindex="2" placeholder="Ej: 12345678-9" value="<%= datosUsuarios.getRut() %>" readonly="readonly">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Edad:
                                    </td>
                                    <td>
                                        <input type="text" id="txtEdad" name="txtEdad" maxlength="2" class="boxText" style="width: 50px;" tabindex="2" placeholder="Ej: 18" value="<%= datosUsuarios.getEdad() %>">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Correo electrónico:
                                    </td>
                                    <td>
                                        <input type="text" id="txtCorreo" name="txtCorreo" maxlength="50" class="boxText" style="width: 200px;" tabindex="3" placeholder="Ej: mail@domain.com" value="<%= datosUsuarios.getCorreo() %>">
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <table border="0" cellspacing="0" cellpadding="0" align="center">
                                <tr>
                                    <td colspan="2" id="errors" class="error"></td>
                                </tr>
                            </table>
                            <br>
                            <tr>
                                <td align="center" colspan="2">
                                    <input type="submit" name="btnValidar" id="btnValidar" value="Editar" class="boton" tabindex="5">
                                </td>
                            </tr>
                        </fieldset>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</body>
</html>
