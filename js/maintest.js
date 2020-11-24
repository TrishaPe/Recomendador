var checkboxes=document.getElementsByClassName("interes");
var divarticulos=document.getElementById("content");
var splitintereses=selintereses.split(',');

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

//Check checkboxes of selected interests from Index page
for (let i=0; i<checkboxes.length; i++) {
  for (let j=0; j<splitintereses.length; j++){
    if (checkboxes[i].value==splitintereses[j]) {
      checkboxes[i].checked=true;
    }
  }
}

//Show related articles
let intids=getInterestIds();
ShowArticles(intids);

//Whenever a checkbox is checked or unchecked
for (let i=0; i<checkboxes.length; i++){
  checkboxes[i].addEventListener("change", function(){
    hideArticles();
    let intids=getInterestIds();

    //if any of the interests is checked, hide everything unrelated to the checks. If no interests are checked, show all articles
    if (intids!=""){
      ShowArticles(intids);
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

function getInterestIds(){
  //Create array of the ids of the checked checkboxes
  let intids=new Array;
  for (let i=0; i<checkboxes.length; i++) {
    if (checkboxes[i].checked) {
      intids.push(checkboxes[i].id);
    }
  }
  return intids;
}

function ShowArticles(intids){
  //Create an array of matching article ids from articulo_interes
  let artids=new Array();
  for (let i=0; i<artint.length; i++){
    let interes=artint[i].id_interes;
    for (let j=0; j<intids.length; j++){
      if (interes==intids[j]){
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
<div id="checklist" class="flex-column nav-link feather">
  <?php while($interes=mysqli_fetch_assoc($resintereses)){
    echo "<div id='div".$interes[id]."' class='form-check'>
    <input type='checkbox' class='form-check-input interes' id='int".$interes['id']."' name='int".$interes['id']."'>
    <label class='form-check-label' for='".$interes['nombre']."'>".$interes['nombre']."</label>
    </div>";
  }?>
</div>

//Datos de base de datos
var articulos= <?php echo json_encode($articulos) ?>;
var intereses= <?php echo json_encode($intereses) ?>;
var artint= <?php echo json_encode($artint) ?>;

//Datos seleccionados en primera página
var sexo = = <?php echo $sexo ?>;
var edad = = <?php echo $edad ?>;
var selintereses = <?php echo $selintereses ?>;

*/

