var elems = document.querySelectorAll('input[type="range"]');

var rangeValue = function(event){
  var elem = event.currentTarget
  var newValue = elem.value;
  var target = document.getElementById(`value-${elem.dataset.donation}`);
  target.innerHTML = newValue;
}

var initInput = function() {
  elems.forEach((elem) => {
  elem.addEventListener("input", rangeValue);
})}

export { initInput };
