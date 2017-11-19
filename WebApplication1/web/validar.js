/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validarNuevoCliente() {
    var Nombre, Apellido, Documento, Telefono;
    

    Nombre = document.getElementById("txtNombre").value;
    Apellido = document.getElementById("txtApelldio");
    Documento = document.getElementById("txtDocumento").value;
    Telefono = document.getElementById("txtTelefono").value;
    

    if (!isNaN(Nombre)) {
        alert("El campo Nombre solo acepta letras");
        return false;
    }
    if (!isNaN(Apellido)) {
        alert("El campo Apellido solo acepta letras");
        return false;
    }
    
    
    if (isNaN(Telefono)) {
        alert("El campo Telefono solo acepta numeros");
        return false;
        }
        
    else if (Telefono < 0)
    {
        alert("El numero de telefono debe ser positivo");
        return false;
    } 
    else if (Telefono.length < 6 && Telefono.length > 14)
    {
        alert("El Telefono debe tener un largo de entre 6 y 14 caracteres");
        return false;
    }
    if (isNaN(Documento)) {
        alert("El campo Documento solo acepta numeros ");
        return false;
    } 
    else if (Documento < 0)
    {
        alert("El Documento debe ser positivo");
        return false;
    } 
    else if (Documento.length !== 8)
    {
        alert("El Documento debe tener un largo de 8 caracteres");
        return false;
    }
    alert("Cliente registrado exitosamente");
}
function validarNuevoAlquiler() {
    var CantEquipos, SillasExtras;

    CantEquipos = document.getElementById("txtCantEquipos").value;
    SillasExtras = document.getElementById("txtSillasExtras").value;

    if (isNaN(CantEquipos)) {
        alert("El campo Cantidad de Equipos solo acepta numeros");
        return false;
    } 
    else if (CantEquipos < 0)
    {
        alert("La cantidad de equipos no puede ser negativa");
        return false;
    } 
    else if (CantEquipos > 100)
    {
        alert("La cantidad de equipos no puede exceder 100");
        return false;
    }
    if (isNaN(SillasExtras)) {
        alert("El campo Sillas Extras solo acepta numeros");
        return false;
    } 
    else if (SillasExtras < 0)
    {
        alert("La cantidad de sillas no puede ser negativa");
        return false;
    } 
    else if (SillasExtras > 100)
    {
        alert("La cantidad de sillas extras no puede exceder 100");
        return false;
    }
    alert("Alquiler registrado exitosamente");
}
function validarNuevoPuesto() {
    var Piso, CantSillas;

    Piso = document.getElementById("txtPiso").value;
    CantSillas = document.getElementById("txtCantSillas").value;

    if (isNaN(Piso)) {
        alert("El campo Piso solo acepta numeros");
        return false;
    }
    else if (Piso < 0)
    {
        alert("El campo Piso no puede ser negativo");
        return false;
    }
    else if (Piso > 5)
    {
        alert("El campo Piso no puede ser mayor a 5");
        return false;
    }
    if (isNaN(CantSillas)) {
        alert("El campo Cantidad de Sillas solo acepta numeros");
        return false;
    }
    else if (CantiSillas < 0)
    {
        alert("El campo Cantidad de Sillas no puede ser negativo");
        return false;
    } 
    else if (CantSillas > 100)
    {
        alert("La campo Cantidad de Sillas no puede ser mayor a 100");
        return false;
    }
    alert("Puesto registrado exitosamente");
}