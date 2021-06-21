console.log("hellooo :) ")
document.addEventListener('DOMContentLoaded' , function(e){
    console.log("hi")
    let my_h1 = document.querySelector('h1');
    console.log(my_h1.innerText);
    my_h1.innerText = "I am fine!!!"
    console.log(my_h1.innerText);


    let ul = document.querySelector('#todo');

    for(let i = 0; i < 1000; i++){
        let newLi = document.createElement('li');
        newLi.innerText = "New here!!";
        newLi.className = "item";    
        ul.appendChild(newLi);
    }
});