const playerScelta = document.querySelector("#scelta");

function openLife() {
  document.querySelector(".background").style.display = "block";
  document.querySelector(".title").style.display = "block";
  document.querySelector(".boxkaros").style.display = "block";
  document.querySelector(".boxkaros2").style.display = "block";
  document.querySelector(".boxkaros3").style.display = "block";
  document.querySelector(".boxkaros4").style.display = "block";
  

}

window.addEventListener("message", function (event) {
  let data = event.data;
  if (data.type === "openLife") {
    openLife();

  }
});

function post(path) {
  fetch(path, {
    method: "POST",
    headers: {
      "Content-Type": "application/json; charset=UTF-8",
    },
    body: JSON.stringify({}),
  }).then((resp) => resp.json());
}

function selectCivil() {
    post(`https://krs_lifestyle/civil`)
    document.querySelector(".title").style.display = "none";
    document.querySelector(".boxkaros").style.display = "none";
    document.querySelector(".boxkaros2").style.display = "none";
    document.querySelector(".boxkaros3").style.display = "none";
    document.querySelector(".boxkaros4").style.display = "none";
    document.querySelector(".background").style.display = "none";
}
function selectGangster() {
    post(`https://krs_lifestyle/gangster`)
    document.querySelector(".title").style.display = "none";
    document.querySelector(".boxkaros").style.display = "none";
    document.querySelector(".boxkaros2").style.display = "none";
    document.querySelector(".boxkaros3").style.display = "none";
    document.querySelector(".boxkaros4").style.display = "none";
    document.querySelector(".background").style.display = "none";
}
function selectMafia() {
    post(`https://krs_lifestyle/mafia`)
    document.querySelector(".title").style.display = "none";
    document.querySelector(".boxkaros").style.display = "none";
    document.querySelector(".boxkaros2").style.display = "none";
    document.querySelector(".boxkaros3").style.display = "none";
    document.querySelector(".boxkaros4").style.display = "none";
    document.querySelector(".background").style.display = "none";
}

function selectEntrepreneur() {
    post(`https://krs_lifestyle/entrepreneur`)
    document.querySelector(".title").style.display = "none";
    document.querySelector(".boxkaros").style.display = "none";
    document.querySelector(".boxkaros2").style.display = "none";
    document.querySelector(".boxkaros3").style.display = "none";
    document.querySelector(".boxkaros4").style.display = "none";
    document.querySelector(".background").style.display = "none";
}



//Funzione Close
document.onkeydown = function (evt) {
  evt = evt || window.event;
  var isEscape = false;
  if ("key" in evt) {
    isEscape = evt.key === "Escape" || evt.key === "Esc";
  } else {
    isEscape = evt.keyCode === 27;
  }
  if (isEscape) {
    
    post(`https://${GetParentResourceName()}/close`);
      
    document.querySelector(".title").style.display = "none";
    document.querySelector(".boxkaros").style.display = "none";
    document.querySelector(".boxkaros2").style.display = "none";
    document.querySelector(".boxkaros3").style.display = "none";
    document.querySelector(".boxkaros4").style.display = "none";
    document.querySelector(".background").style.display = "none";
  }
};
