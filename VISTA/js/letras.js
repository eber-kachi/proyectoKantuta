//letras
function validar(e) {
tecla = (document.all) ? e.keyCode : e.which;
if (tecla==8) return true;
patron =/[A-Za-z\s]/;
te = String.fromCharCode(tecla);
return patron.test(te);
}
//numeros
function validarNum(e) {
tecla = (document.all) ? e.keyCode : e.which;
if (tecla==8) return true;
patron = /\d/;
te = String.fromCharCode(tecla);
return patron.test(te);
}
//ambos
function validarAmbos(e) {
tecla = (document.all) ? e.keyCode : e.which;
if (tecla==8) return true;
patron = /[A-Za-z\s\d]/;
te = String.fromCharCode(tecla);
return patron.test(te);
}
//para el ci
function validarEsp(e) {
tecla = (document.all) ? e.keyCode : e.which;
if (tecla==8) return true;
patron = /[A-Za-z\s\d\-]/;
te = String.fromCharCode(tecla);
return patron.test(te);
}
//formato hora
function validarHora(e) {
tecla = (document.all) ? e.keyCode : e.which;
if (tecla==8) return true;
patron = /[\d\-\:]/;
te = String.fromCharCode(tecla);
return patron.test(te);
}