//1.als klant service & datum geklikt heeft,stuur deze data naar backend toe
//bron:https://www.freecodecamp.org/chinese/news/how-to-make-api-calls-with-fetch/
let datumStuur = document.getElementById("afspraakdatum")

function infoButtonListener(event) {

  let info = {
    "time": event.target.value,
  }; //https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/input_event
  let infotime = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(info),
  };
  fetch('BeitestTime.php', infotime)
    .then(response => {
      console.log(response.json())
    })
}

datumStuur.addEventListener('change', infoButtonListener)

let infoButtons = document.querySelectorAll(".datatime")
for (var i = 0; i < infoButtons.length; i++) {
  const infoButton = infoButtons[i];


  // let infoButton = document.getElementById("kort haar")
  // let infoButton = document.getElementsByName("datatime")
  // let infoButton = document.frm.keuzebehandelingoverig.value
  infoButton.addEventListener('click', infoButtonListener)
}
// const testdata = () =>{

// let info =  {"tim":value,} 
// let infotime= {
//   method: 'POST',
//   headers: {
//     'Content-Type': 'application/json',
//   },
//   body: JSON.stringify(info),
// };
// fetch('BeitestTime.php', infotime)
// .then(response => {
//   console.log(response.json())
// })
// }

// var xmlHttp = new XMLHttpRequest();
// xmlHttp.onload = function(){
//   const tijdList = JSON.parse(this.responseText);
//   Document.getElementById("").innerHTML = tijdList;

// }
// xmlHttp.open("POST","BeitestTime.php"); 
// xmlHttp.send();

function myFunctionA() {
  var keuzeb = document.getElementsByName("keuzebehandeling");
  var over = document.getElementsByName("keuzebehandelingoverig");
  var fin = document.getElementsByName("keuzefinish");
  console.log(fin);
  let gekozen;
  for (var i = 0; i < keuzeb.length; i++) {
    let keuzebb = keuzeb[i];
    if (keuzebb.checked) {
      gekozen = keuzebb.value.split(",")[1];
    }
  }
  console.log(gekozen)
  let gekozenOverig = 0;
  for (var i = 0; i < over.length; i++) {
    let overig = over[i];

    if (overig.checked) {
      gekozenOverig = overig.value.split(",")[1];
    }
  }
  console.log(gekozenOverig)
  let gekozenFinish = 0;
  for (var i = 0; i < fin.length; i++) {
    let finish = fin[i];

    if (finish.checked) {
      gekozenFinish = finish.value.split(",")[1];
    }

  }
  console.log(gekozenFinish)
}





//-------------------------bei----------------------------
document.getElementById("afspraakdatum").onchange = function () {

  updateValue();
}

function updateValue() {
  document.getElementById("afspraakdatum").style.backgroundColor = "var(--Paars)";

  var input = document.getElementById("afspraakdatum").value;
  let datum = new Date(input);
  document.getElementById("output").innerHTML = datum.getDate() + "-" + (datum.getMonth() + 1) + "-" + datum.getFullYear();

}





function myFunction() {

  var keuzeb = document.getElementsByName("keuzebehandeling");
  var over = document.getElementsByName("keuzebehandelingoverig");
  var fin = document.getElementsByName("keuzefinish");
  var rem = document.getElementsByName("keuzereminder");
  var tijd = document.getElementsByName("keuzetijd");

  for (var opt of keuzeb) {
    if (opt.checked) {
      let option = opt.value.split(",");
      document.getElementById("kb").innerHTML = option[0];
    }
  }

  for (var opt of over) {
    if (opt.checked) {
      let option = opt.value.split(",");
      document.getElementById("ov").innerHTML = option[0];
    }
  }

  for (var opt of fin) {
    if (opt.checked) {
      let option = opt.value.split(",");
      document.getElementById("fi").innerHTML = option[0];
    }
  }

  for (var opt of rem) {
    if (opt.checked) {
      let option = opt.value.split(",");
      document.getElementById("re").innerHTML = option[0];
    }
  }

  for (var opt of tijd) {
    if (opt.checked) {
      let option = opt.value.split(",");
      document.getElementById("ti").innerHTML = option[0];
    }
  }

}


// calculate totaal
function calc() {
  let totaalprijs = 0;
  let totaaltijd = 0;

  var rates = document.getElementsByTagName("input");
  var value_prijs = 0;
  var value_tijd = 0;
  for (var i = 0; i < rates.length; i++) {
    if (rates[i].checked) {
      let option = rates[i].value.split(",");
      value_prijs = option[2];
      value_tijd = option[1];

      // console.log(value_prijs);

      totaalprijs += parseInt(value_prijs);
      totaaltijd += parseInt(value_tijd);

    }

  }

  if (totaaltijd >= 60) {

    const uren = Math.floor(totaaltijd / 60);
    const minuten = totaaltijd % 60;

    if (minuten > 0) {

      document.getElementById("total").innerHTML = totaalprijs + " eur" + ", " + uren + " uur en " + minuten + " minuten";
    }
    else {
      document.getElementById("total").innerHTML = totaalprijs + " eur" + ", " + uren + " uur";

    }

  }
  else {
    document.getElementById("total").innerHTML = totaalprijs + " eur" + ", " + totaaltijd + " minuten";
  }

}