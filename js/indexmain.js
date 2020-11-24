
//Section 'sexos'
var sexos=document.getElementById("sexos");

for (let i=0; i<sexos.children.length; i++){
  sexos.children[i].addEventListener("click", function(){

    for(let j=0; j<sexos.children.length; j++){ //remove 'clicked' class from all children
      let child=sexos.children[j];
      child.classList.remove("clicked");
    }

    let selected=sexos.children[i];
    selected.classList.add("clicked");
  });
}

//Section 'intereses'
var intereses=document.getElementsByClassName("intereses")[0];
for (let i=0; i<intereses.children.length; i++){
  intereses.children[i].addEventListener("click", function(){
    let selected=intereses.children[i];
    selected.classList.toggle("clicked");
  });
}


//Botón buscar

let botonbuscar=document.getElementById("gobutton");
botonbuscar.addEventListener("click", function(){
  let inputsexo=document.getElementById("sexo");
  for (let i=0; i<sexos.children.length; i++){
    if (sexos.children[i].classList.contains("clicked")){
      let sexo=sexos.children[i].id;
      inputsexo.setAttribute("value", sexo);
    }
  }

  let inputedad=document.getElementById("edad");
  let edad=document.getElementById("edades");
  inputedad.setAttribute("value", edad.value);

  let inputintereses=document.getElementById("selintereses");
  for (let i=0; i<intereses.children.length; i++){
    if (intereses.children[i].classList.contains("clicked")){
      let interesdiv=intereses.children[i]
      let interes=interesdiv.children[0].id;
      let existente=inputintereses.value;
      if (existente!=""){
        inputintereses.setAttribute("value", (inputintereses.value + "," + interes));
      }else{
        inputintereses.setAttribute("value", interes);
      }
    }
  }

  document.getElementById("formbuscar").submit();
  

});


