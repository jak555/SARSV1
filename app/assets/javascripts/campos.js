var counter = 1;
var limit = 10;
function addInput(divName){
     if (counter == limit)  {
          alert("No puedes agregar mas de " + counter + " palabras");
     }
     else {
          var newdiv = document.createElement('div');
          newdiv.innerHTML = "<label>Palabra estímulo " + (counter + 1) + "</label> <br><input type='text' class='form-control' name='myInputs[]'>";
          document.getElementById(divName).appendChild(newdiv);
          counter++;
     }
}
