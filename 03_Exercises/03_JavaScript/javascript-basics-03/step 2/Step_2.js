function buttton(x) {
  console.log(x)
  var text = document.getElementById("texte");
  if (x == "show") {
    text.style.display = "block";
  } else {
    text.style.display = "none";
  }

}