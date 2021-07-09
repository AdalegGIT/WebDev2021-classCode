document.addEventListener("DOMContentLoaded", () => {
  const ul = document.querySelector("#user-list");
  const myFetch = () => {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve("Time is done");
      }, 5000);
    });
  };

  myFetch()
    .then((e) => console.log(e))
    .catch((err) => console.log(err));

  fetch("http://www.omdbapi.com/?apikey=dba8c231&s=marvel")
    .then((e) => e.json())
    .then((e) => console.log("DATA::", e));

  fetch("http://www.omdbapi.com/?apikey=dba8c231&i=tt0372784")
    .then((e) => e.json())
    .then((e) => console.log("MOVIE::", e));

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

  console.log("I am Final line(1)");
  console.log("I am Final line(2)");
  console.log("I am Final line(3)");
  console.log("I am Final line(4)");
  console.log("I am Final line(5)");
});
