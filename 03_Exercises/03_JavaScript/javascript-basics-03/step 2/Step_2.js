function buttton(use) {
  var texte = document.getElementById("texte");
  if (use === "show") {
    texte.style.display = "inline";
  } else if (use === "hide") {
    texte.style.display = "none";
  }

}