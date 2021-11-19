function togglepopup(bool) {
    if(bool==0){
        document.getElementById("popup").style.display = "none";
        document.getElementById("overlay").style.display = "none";
    }
        
    else{
        document.getElementById("popup").style.display = "block";
        document.getElementById("overlay").style.display = "block";
    }
}

function toggleInput(bool){ 
    document.getElementById("myForm").reset();
    if(bool==0){
        document.getElementById("input").style.display = "none";
        document.getElementById("overlay").style.display = "none";
    }

    else {
        document.getElementById("input").style.display = "block";
        document.getElementById("overlay").style.display = "block";
    }
    
}

function changeBackgroundColor() {
    var compStyle=getComputedStyle(document.body,'');
    var bgClr=compStyle.getPropertyValue('background-image');

    if (bgClr == "linear-gradient(to left top, rgb(227, 93, 160), rgb(29, 45, 124))") { 
        document.body.style.background = "linear-gradient(45deg, #85FFBD 0%, #FFFB7D 100%)";
    }
    if (bgClr == "linear-gradient(45deg, rgb(133, 255, 189) 0%, rgb(255, 251, 125) 100%)"){
        document.body.style.background = "linear-gradient(90deg, #00DBDE 0%, #FC00FF 100%)";
    }
    if (bgClr == "linear-gradient(90deg, rgb(0, 219, 222) 0%, rgb(252, 0, 255) 100%)"){
        document.body.style.background = "linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%)";
    }
    if (bgClr == "linear-gradient(62deg, rgb(142, 197, 252) 0%, rgb(224, 195, 252) 100%)"){
        document.body.style.background = "linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%)";
    }
    if (bgClr == "linear-gradient(43deg, rgb(65, 88, 208) 0%, rgb(200, 80, 192) 46%, rgb(255, 204, 112) 100%)"){
        document.body.style.background = "linear-gradient(180deg, #FFFFFF 0%, #6284FF 50%, #FF0000 100%)";
    }
    if (bgClr == "linear-gradient(rgb(255, 255, 255) 0%, rgb(98, 132, 255) 50%, rgb(255, 0, 0) 100%)"){
        document.body.style.background = "linear-gradient(0deg, #D9AFD9 0%, #97D9E1 100%)";
    }
    if (bgClr == "linear-gradient(0deg, rgb(217, 175, 217) 0%, rgb(151, 217, 225) 100%)"){
        document.body.style.background = "linear-gradient(to top left, #e35da0, #1d2d7c)";
    }
}

const storageInput = document.querySelector('.storage');
const text = document.querySelector('.text');
const button = document.querySelector('.save');
const storedInput = localStorage.getItem('textInput');

if(storageInput) {
    text.textContent = storedInput;
}

storageInput.addEventListener('input', letter => {
    text.textContent = letter.target.value
});

const saveToLocalStorage = () => {
    localStorage.setItem('textInput',text.textContent)
    toggleInput(0)
};

button.addEventListener('click', saveToLocalStorage); 


