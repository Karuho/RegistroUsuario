function fnEditar(rut) {
    window.location.href = 'EditarController?rut=' + rut;
}
function fnVolverListado() {
    window.location.href = 'ListarController';
}
function fnHome() {
    window.location.href = 'index.jsp';
}

function fnLimpiarRegistro() {
    document.getElementById('txtRut').value = '';
    document.getElementById('txtUsuario').value = '';
    document.getElementById('txtContrasena').value = '';
    document.getElementById('txtEdad').value = '';
    document.getElementById('txtCorreo').value = '';
}
