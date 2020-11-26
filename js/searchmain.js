var divarticulos=document.getElementById("content");

/*On load:
- Hide all articles
- Check checkboxes of selected interests from Index page
- Show articles related to selected interests
On change:
- Hide all articles
- Get all checked checkboxes
- Show articles related to selected interests. If no interests are selected, show everything
*/

//hide all articles
hideArticles();

//Check radio of selected gender from Index page
var radiosexos=document.getElementsByClassName("sexo");
for (let i=0; i<radiosexos.length; i++) {
  for (let j=0; j<1; j++){
    if (radiosexos[i].value==sexo){
      radiosexos[i].checked=true;
    }
  }
}

//select dropdown of selected age from Index page
var selectedad=document.getElementById("edad");
for (let i=0; i<selectedad.children.length; i++) {
  if (selectedad.children[i].value==edad) {
    selectedad.children[i].selected=true;
  }
}

//Check checkboxes of selected interests from Index page
var checkboxes=document.getElementsByClassName("interes");
var splitintereses=selintereses.split(',');
for (let i=0; i<checkboxes.length; i++) {
  for (let j=0; j<splitintereses.length; j++){
    if (checkboxes[i].value==splitintereses[j]) {
      checkboxes[i].checked=true;
    }
  }
}

//Get selected data
let selSexo=getSexo();
let selEdad=getEdad();
let selInt=getInterestIds();

if (selInt!=""){
  ShowArticles(selSexo, selEdad, selInt);
}else{
  showNoInterests(selSexo, selEdad);
}

//Whenever a checkbox is checked or unchecked
for (let i=0; i<checkboxes.length; i++){
  checkboxes[i].addEventListener("change", function(){
    hideArticles();
    let selSexo=getSexo();
    let selEdad=getEdad();
    let selInt=getInterestIds();

    //if any of the interests is checked, hide everything unrelated to the checks. If no interests are checked, show all articles
    if (selInt!=""){
      ShowArticles(selSexo, selEdad, selInt);
    }else{
      showNoInterests(selSexo, selEdad);
    }
  });
}

//Whenever a radio button is changed
for (let i=0; i<radiosexos.length; i++){
  radiosexos[i].addEventListener("change", function(){
    hideArticles();
    let selSexo=getSexo();
    let selEdad=getEdad();
    let selInt=getInterestIds();

    //if any of the interests is checked, hide everything unrelated to the checks. If no interests are checked, show all articles
    if (selInt!=""){
      ShowArticles(selSexo, selEdad, selInt);
    }else{
      showNoInterests(selSexo, selEdad);
    }
  });
}

//Whenever the age dropdown is changed
selectedad.addEventListener("change", function(){
  hideArticles();
    let selSexo=getSexo();
    let selEdad=getEdad();
    let selInt=getInterestIds();

    //if any of the interests is checked, hide everything unrelated to the checks. If no interests are checked, show all articles
    if (selInt!=""){
      ShowArticles(selSexo, selEdad, selInt);
    }else{
      showNoInterests(selSexo, selEdad);
    }
});

// Helper functions
function hideArticles(){
  for (let i=0; i<divarticulos.children.length; i++){
    divarticulos.children[i].classList.add("hidden");
  }
}

function getSexo(){
  let selection;
  for (let i=0; i<radiosexos.length; i++) {
    if (radiosexos[i].checked){
      selection=radiosexos[i].value;
    }
  }
  
  let sexoOpciones= {"Masculino":1, "Femenino":2, "Indiferente":3};
  let selSexo=sexoOpciones[selection];
  return selSexo;
}

function getEdad(){
  let edadOpcion=selectedad.value;
  let selEdad=new Array();
  switch (edadOpcion){
    case "1":
      selEdad=[1, 3];
      break;
    case "2":
      selEdad=[4, 6];
      break;
    case "3":
      selEdad=[7, 10];
      break;
    case "4":
      selEdad=[11, 13];
      break;
    case "5":
      selEdad=[14, 16];
      break;
    case "6":
      selEdad=[17, 20];
      break;
    case "7":
      selEdad=[21, 25];
      break;
    case "8":
      selEdad=[26, 30];
      break;
    case "9":
      selEdad=[31, 35];
      break;
    case "10":
      selEdad=[36, 40];
      break;
    case "11":
      selEdad=[41, 50];
      break;
    case "12":
      selEdad=[51, 60];
      break;
    case "13":
      selEdad=[60, 80];
      break;
  }
  return selEdad;
}

function getInterestIds(){
  //Create array of the ids of the checked interests
  let selInt=new Array;
  for (let i=0; i<checkboxes.length; i++) {
    if (checkboxes[i].checked) {
      selInt.push(checkboxes[i].id);
    }
  }
  return selInt;
}

function show(articles){
  for (let i=0; i<articles.length; i++){
    let artid=articles[i];
    for (let j=0; j<divarticulos.children.length; j++){
      let targetid= "art"+artid;
      if (divarticulos.children[j].id===targetid){
        let target=divarticulos.children[j];
        target.classList.remove("hidden");
      }
    }
  }
}

function ShowArticles(selSexo, selEdad, selInt){
  //Create an array of matching article ids from articulo_interes
  let artids=new Array();
  for (let i=0; i<artint.length; i++){
    let interes=artint[i].id_interes;
    for (let j=0; j<selInt.length; j++){
      if (interes==selInt[j]){
        artids.push(artint[i].id_articulo);
      }
    }
  }

  //Match selected articles with gender and age
  let finalArticles=new Array();
  for (let i=0; i<articulos.length; i++){
    for (let j=0; j<artids.length; j++){
      if(articulos[i].id==artids[j]){
        if (articulos[i].sexo==selSexo){
          if (articulos[i].edad_in<=selEdad[0]){
            if (articulos[i].edad_fin>=selEdad[1]){
              finalArticles.push(articulos[i].id);
            }
          }
        }
      }
    }
  }

  //show the articles from the array
  show(finalArticles);
}

function showNoInterests(selSexo, selEdad){
  let articles=new Array();
  for (let i=0; i<articulos.length; i++){
    if (articulos[i].sexo==selSexo){
      if (articulos[i].edad_in<=selEdad[0]){
        if (articulos[i].edad_fin>=selEdad[1]){
          articles.push(articulos[i].id);
        }
      }
    }
  }
  show(articles);
}


/* SOURCE:

//Datos de base de datos
var articulos= <?php echo json_encode($articulos) ?>;
var sexos= <?php echo json_encode($sexos) ?>;
var intereses= <?php echo json_encode($intereses) ?>;
var artint= <?php echo json_encode($artint) ?>;

//Datos seleccionados en primera página
var sexo = '<?php echo $sexo ?>';
var edad = <?php echo $edad ?>;
var selintereses = '<?php echo $selintereses ?>';


*/

