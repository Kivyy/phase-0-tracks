// Create element

function createPara(element){
	var newElement = document.createElement(element);
	newElement.style.height = "100vh";
	document.body.appendChild(newElement);
	newElement.textContent = 'Working with DOM is fun!'
	return newElement;
}

var paraOne = createPara('P');

function sendAlert() {
    setInterval(function(){ alert("IT WORKSSS!"); }, 2000);
}


function addBorder(event){
	paraOne.style.border = "2px solid black";
}
paraOne.addEventListener("click",addBorder);


