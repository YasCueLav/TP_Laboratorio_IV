/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function soloLetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
    especiales = "8-37-39-46";

    tecla_especial = false
    for (var i in especiales) {
        if (key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if (letras.indexOf(tecla) == -1 && !tecla_especial) {
        return false;
    }
}

function validarNuevoPuesto() {
    var Piso, CantSillas;

    Piso = document.getElementById("pisoPuesto").value;
    num = document.getElementById("numeroPuesto").value;
    CantSillas = document.getElementById("sillasExtra").value;

    if (isNaN(Piso)) {
        alert("El campo Piso solo acepta numeros");
        return false;
    } else if (Piso < 0)
    {
        alert("El campo Piso no puede ser negativo");
        return false;
    } else if (Piso > 5)
    {
        alert("El campo Piso no puede ser mayor a 5");
        return false;
    }
    if (isNaN(num)) {
        alert("El campo numero solo acepta numeros");
        return false;
    } else if (num < 0)
    {
        alert("El campo numero no puede ser negativo");
        return false;
    }

    if (isNaN(CantSillas)) {
        alert("El campo Cantidad de Sillas solo acepta numeros");
        return false;
    } else if (CantSillas < 0)
    {
        alert("El campo Cantidad de Sillas no puede ser negativo");
        return false;
    } else if (CantSillas > 100)
    {
        alert("La campo Cantidad de Sillas no puede ser mayor a 100");
        return false;
    }
    alert("Puesto registrado exitosamente");
}