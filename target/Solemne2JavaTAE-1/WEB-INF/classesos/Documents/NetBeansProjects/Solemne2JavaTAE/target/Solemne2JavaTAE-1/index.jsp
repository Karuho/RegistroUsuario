<%-- 
    Document   : index
    Created on : 06-jun-2021, 15:35:40
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <script type="text/javascript" src="js/validaciones.js"></script>
        <link type="text/css" rel="stylesheet" href="css/estilos.css" media="screen" /></link>
    </head>
    <body>
        <form name="frmRegistro" id="frmRegistro" action="RegistroController" method="POST">
            <table border="0" cellspacing="0" cellpadding="5" align="center" width="500" height="300">
                <tr>
                    <td align="center">
                        <fieldset>
                            <legend>Registro de Usuario</legend>
                            <table class="table extBorder" align="center" cellpadding="2" cellspacing="1" border="0" widht="500">
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Nombre de Usuario:
                                    </td>
                                    <td>
                                        <input type="text" id="txtUsuario" name="txtUsuario" maxlength="50" class="boxText">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Contraseña:
                                    </td>
                                    <td>
                                        <input type="password" id="txtContrasena" name="txtContrasena" maxlength="50" class="boxText">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Rut:
                                    </td>
                                    <td>
                                        <input type="text" id="txtRut" name="txtRut" maxlength="10" class="boxText" style="width: 100px;" tabindex="2" placeholder="Ej: 12345678-9">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Edad:
                                    </td>
                                    <td>
                                        <input type="text" id="txtEdad" name="txtEdad" maxlength="2" class="boxText" style="width: 50px;" tabindex="2" placeholder="Ej: 18">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Correo electrónico:
                                    </td>
                                    <td>
                                        <input type="text" id="txtCorreo" name="txtCorreo" maxlength="50" class="boxText" style="width: 200px;" tabindex="3" placeholder="Ej: mail@domain.com">
                                    </td>
                                </tr>
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
                        <input type="submit" name="btnRegistrar" id="btnRegistrar" value="Registrar" class="boton" tabindex="5">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
