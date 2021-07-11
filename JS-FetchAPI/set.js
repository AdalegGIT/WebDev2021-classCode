document.addEventListener("DOMContentLoaded", () => {
  const ul = document.querySelector("#user-list");

  let setData = new Set();

  setData.add(2);
  setData.add(4);
  setData.add("d");
  setData.add({ name: "hello!!" });
  console.log(setData);
  // setData.clear();
  setData.delete(2);

  // for of loop
  for (let item of setData) {
    console.log(item);
  }

  const numbers = [2, 3, 4, 4, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 5, 32, 3, 4, 5];

  let data = new Set(numbers)
  
  console.log([...data]);
});
