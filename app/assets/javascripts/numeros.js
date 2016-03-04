function Numeros(e) {
var keynum = window.event ? window.event.keyCode : e.which;
if ((keynum == 8) || (keynum == 46))
return true;
return /\d/.test(String.fromCharCode(keynum));
}

function Letras(e){
       key = e.keyCode || e.which;
       tecla = String.fromCharCode(key).toLowerCase();
       letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
       especiales = "8-37-39-46";

       tecla_especial = false
       for(var i in especiales){
            if(key == especiales[i]){
                tecla_especial = true;
                break;
            }
        }

        if(letras.indexOf(tecla)==-1 && !tecla_especial){
            return false;
        }
}

function activa(v){ 
if(v=="Bachillerato")document.formulario.carrera.disabled = true; 
else 
if(v!=0)document.formulario.carrera.disabled = false; 
}

function comprobar1()
{
var a = document.getElementById("pregunta1");
var a1 = document.getElementById("pregunta2");
var a2 = document.getElementById("pregunta3");
var a3 = document.getElementById("pregunta4");
var a4 = document.getElementById("pregunta5");
var a5 = document.getElementById("pregunta6");
var a6 = document.getElementById("pregunta7");
var a7 = document.getElementById("pregunta8");
var a8 = document.getElementById("pregunta9");
var a9 = document.getElementById("pregunta10");
    var al = new Array();
    al[0] = a;
    al[1] = a1;
    al[2] = a2;
    al[3] = a3;
    al[4] = a4;
    al[5] = a5;
    al[6] = a6;
    al[7] = a7;
    al[8] = a8;
    al[9] = a9;
    
    if(al.repetidos() == true)
    {
        alert("contiene repetidos");
        document.getElementById("button").disabled = true;
    }
    else 
    {
        console.log(al.repetidos());
        document.getElementById("button").disabled = false;
    }
    
    
    
} 
Array.prototype.repetidos = function(){
    for(var i = 0; i < this.length; i++)
    {
        for(var j = 0; j < this.length; j++)
        {
            if(i != j)
            {
                if(this[i].value == this[j].value)
                {
                    if(this[i].value != "" && this[j].value != "")
                    {
                        console.log(this[i].value + "=" + this[j].value);
                        return true;
                    }
                }
            }
        }
    }
}
function comprobar(v)
{
var a = document.getElementById("orden1");
var a1 = document.getElementById("orden2");
var a2 = document.getElementById("orden3");
var a3 = document.getElementById("orden4");
var a4 = document.getElementById("orden5");
var a5 = document.getElementById("orden6");
var a6 = document.getElementById("orden7");
var a7 = document.getElementById("orden8");
var a8 = document.getElementById("orden9");
var a9 = document.getElementById("orden10");


if (a.value == a1.value || a.value == a2.value || a.value == a3.value || a.value == a4.value || a.value == a5.value || a.value == a6.value || a.value == a7.value || a.value == a8.value || a.value == a9.value)
document.formulario1.boton.disabled = true;
else
document.formulario1.boton.disabled = false;
if (a1.value == a2.value || a1.value == a3.value || a1.value == a4.value || a1.value == a5.value || a1.value == a6.value || a1.value == a7.value || a1.value == a8.value || a1.value == a9.value)
document.formulario1.boton.disabled = true;
else
document.formulario1.boton.disabled = false;
if (a2.value == a3.value || a2.value == a4.value || a2.value == a5.value || a2.value == a6.value || a2.value == a7.value || a2.value == a8.value || a2.value == a9.value)
document.formulario1.boton.disabled = true;
else
document.formulario1.boton.disabled = false;
if (a3.value == a4.value || a3.value == a5.value || a3.value == a6.value || a3.value == a7.value || a3.value == a8.value || a3.value == a9.value)
document.formulario1.boton.disabled = true;
else
document.formulario1.boton.disabled = false;
if (a4.value == a5.value || a4.value == a6.value || a4.value == a7.value || a4.value == a8.value || a4.value == a9.value)
document.formulario1.boton.disabled = true;
else
document.formulario1.boton.disabled = false;
if (a5.value == a6.value || a5.value == a7.value || a5.value == a8.value || a5.value == a9.value)
document.formulario1.boton.disabled = true;
else
document.formulario1.boton.disabled = false;
if (a6.value == a7.value || a6.value == a8.value || a6.value == a9.value)
document.formulario1.boton.disabled = true;
else
document.formulario1.boton.disabled = false;
if (a7.value == a8.value || a7.value == a9.value )
document.formulario1.boton.disabled = true;
else
document.formulario1.boton.disabled = false;
if (a8.value == a9.value )
document.formulario1.boton.disabled = true;
else
document.formulario1.boton.disabled = false;
if (v > 10)
{
document.formulario1.boton.disabled = true;
alert("El numero debe ser menor a 10");
}
}
