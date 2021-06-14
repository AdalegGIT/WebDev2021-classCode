// es-6
// Array spreading / Destructuring

let names = ['Elvis', 'Sree','Sandra'];
let moreNames = ['Elton', 'Evlyn','Sandy'];
// spread operator
let newArray = [...names,...moreNames];

// let el = names[0]; 
// let sr = names[1]; 

// Array destructuring
let [x,y,z] = names;
// console.log(x,y,z);




// Object spreading / Destructuring

let a = { 
    name: 'yo',
};

// let b = { ...a }; //object spread
let b = a; //object spread
b.name = 'lo'
console.log(a);
console.log(b);


let info = {
    id: '1223',
    fname: 'Elvis'
}

let contactInfo = {
    phone:'48289429',
    email: 'qwerty@qw.ca',
    personalInfo : {...info}
}


let myInfo = {
    phone:'48289429',
    email: 'qwerty@qw.ca',
    personalInfo : {...info}
}

// let p = myInfo['phone'];
// Object destructurin
const  { phone, personalInfo } = myInfo;

let data = {
    phone,
    email,
    personalInfo
};

// console.log(ptt)
