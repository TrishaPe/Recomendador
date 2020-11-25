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

