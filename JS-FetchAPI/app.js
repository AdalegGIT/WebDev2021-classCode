document.addEventListener("DOMContentLoaded", () => {
  const ul = document.querySelector("#user-list");
  fetch("https://jsonplaceholder.typicode.com/users")
    .then((e) => e.json())
    .then((apidata) => {
      apidata.forEach((element) => {
        const li = document.createElement("li");
        li.innerText = element.name;
        ul.append(li);
      });
    })
    .catch((e) => console.log("ERR", e));
});
