import apple from "./data.js";
import { lengthFinder } from "./data.js";

document.addEventListener("DOMContentLoaded", (e) => {
  console.log("DATA::", apple);
  console.log("DATA-Length::", lengthFinder(apple));

  document.querySelector("#infoForm").addEventListener("submit", (e) => {
    e.preventDefault();
    
    console.log(e);
  });
});
