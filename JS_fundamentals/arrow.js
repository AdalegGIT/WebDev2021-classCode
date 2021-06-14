// IMPORTANT ------ ARROW FUNCTION ------

// function hello () {
//     console.log('HEllo world');
// }

const hello = () => 'hello world!!';


const points = [40, 100, 1, 5, 25, 10];

// const even = points.filter(function(e) {
//     return e % 2 === 0
// })

const data = [
    { name: 'Elvis'},
    { name: 'ElTon'},
    { name: 'Sandra'},
    { name: 'Evlyn'},
    { name: 'Sree'},
    { name: 'tom'}
]

const len_5 = data.filter(e => e.name.length === 5)
                  .map(e => {
                      return {
                          ...e,
                          len: 5
                      }
                  });

const even = points.filter(e=>e%2=== 0);

console.log(len_5);