function showalert(){
  var shoesize = document.getElementById("shoe_size").value;
  var birthday = document.getElementById("year").value;
  alert(((((shoesize*2)+5)*50)-birthday)+1766);
 }