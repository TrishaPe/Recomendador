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
ShowArticles(selSexo, selEdad, selInt);

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
      let divarticulos=document.getElementById("content");
      for (let i=0; i<divarticulos.children.length; i++){
        divarticulos.children[i].classList.remove("hidden");
      }
    }
  });
}

// Helper functions
function hideArticles(){
  for (let i=0; i<divarticulos.children.length; i++){
    divarticulos.children[i].classList.add("hidden");
  }
}

function getSexo(){
  let selSexo=radiosexos.value;
  return selSexo;
}

function getEdad(){
  let selEdad=selectedad.value;
  return selEdad;
}

function getInterestIds(){
  //Create array of the ids of the checked checkboxes
  let selInt=new Array;
  for (let i=0; i<checkboxes.length; i++) {
    if (checkboxes[i].checked) {
      selInt.push(checkboxes[i].id);
    }
  }
  return selInt;
}

function ShowArticles(selSexo, selEdad, selInt){
  console.log(articulos[1]);
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

  //show only articles that are in checked categories
  for (let i=0; i<artids.length; i++){
    let artid=artids[i];
    for (let j=0; j<divarticulos.children.length; j++){
      let targetid= "art"+artid;
      if (divarticulos.children[j].id===targetid){
        let target=divarticulos.children[j];
        target.classList.remove("hidden");
      }
    }
  }
}


/* SOURCE:

while($sexo=mysqli_fetch_assoc($ressexos)){
  echo "<DIV ID='div".$sexo['id']."' CLASS='form-check'>
  <INPUT type='radio' CLASS='form-check-input sexo' ID='sex".$sexo['id']."' name='sex".$sexo['id']."' VALUE='".$sexo['nombre']."'>
  ...
  </div>";
}?>

<div class="form-group">
  <select class="form-control" ID="edad">
    <option value="1">1-3</option>
    <option value="2">4-6</option>
    <option value="3">7-10</option>
    <option value="4">11-13</option>
    <option value="5">14-16</option>
    <option value="6">17-20</option>
    <option value="7">21-25</option>
    <option value="8">26-30</option>
    <option value="9">31-35</option>
    <option value="10">36-40</option>
    <option value="11">41-50</option>
    <option value="12">51-60</option>
    <option value="13">60+</option>
  </select>
</div>

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

