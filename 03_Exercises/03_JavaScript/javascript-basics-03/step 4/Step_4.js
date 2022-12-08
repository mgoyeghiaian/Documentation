
var password = document.querySelector("#password");
var confirm = document.querySelector("#confirmation");
var button = document.querySelector("button");

var change_border = function () {

  if (password.value != confirm.value) {
    password.style.border = "3px solid red";
    confirm.style.border = "3px solid red";
  }
}
button.addEventListener("click", change_border);
