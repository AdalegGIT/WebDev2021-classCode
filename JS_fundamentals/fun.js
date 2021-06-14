let aNumber = 10;
aNumber = 90;

const a_FloatingPointNumber = 3.14;
// a_FloatingPointNumber = 0.9;
// strings
aString = 'Hi worlz';
anotherString = 'Hi worlz!!';

// Boolean
aTrue = true;
aFalse = !aTrue;
aFalse = false;

//null
nullValue = null;

// Arrays
let aEmptyArray = [];
let daysOfWeek = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
let mixedArray = [1, 2, null, true, [], 'Monday'];

// console.log(mixedArray.length);

// Object
let anObject = {
  firstName: 'Elvis',
  lastName: 'Peter',
};

// console.log(anObject.firstName)
// console.log(anObject['firstName'])

// console.log('hi am ' + anObject['firstName']);
// console.log('hi am ' + anObject['firstName']);
// console.log(`hi am ${anObject['firstName']}`);

// NAmed function
function simpleForLoop(numberOfIteration) {
  let a = [];
  for (let i = 0; i <=numberOfIteration; i++) {
    a.push(i);
  }
  return a;
}

// console.log(simpleForLoop(20));

// while loop
// let counter = 0
// while(counter !== 10) {
//   console.log('WHILE_LOOP:::',counter);
//   counter = counter + 1;
// }

// do while loop
// do {
//   console.log(':::DO_WHILE_LOOP:::');
// } while(f)

// annoy. func
let printer = function (val) {
  console.log('VALUE IS:::', val);
};

// console.log(printer)
// console.log(printer('hi'))

// function add(a,b, print) {
//   print(a+b);
// }

// add(1, 2, printer);


//-----------------Higher Order Array func.--------------
// let data = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

// foreach
// data.forEach(function(e, q) {
//   console.log(q,e);
// });

// map
// let num = [1,2,3,4,5,6,7,8,9];
// let res = [1,3,3,5,5,7,7,9,9];

// let finalResult = num.map(function (element) {
//   if(element % 2 === 0) {
//     return element + 1
//   }
//   return element;
// });
// console.log(finalResult);

// sort
// const fruits = ["Banana", "Orange", "Apple", "Mango"];
// console.log(fruits.sort());

// const points = [40, 100, 1, 5, 25, 10];
// console.log(points.sort(function(a,b) {
//   return b - a;
// }));

// filter
// let num = [1,2,3,4,5,6,7,8,9];
// console.log (num.filter(function (e) {
//   return e % 2 === 0
// }));

//  const points = [40, 100, 1, 5, 25, 10];

//  let final = points.sort(function(a,b) {
//    return a - b
//  })

const points = [40, 100, 1, 5, 25, 10];
let final = points.sort(function(a,b) {
  return b - a;
}).map(function(e,i) {
  return  {
    value: e,
    index: i,
    isEven: e % 2 === 0
  }
}).filter(function(e) {
  return e.isEven;
}).map(function(x) {
  return x.value;
})

console.log(final)
hello
hi
bye
