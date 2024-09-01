const wrapper = document.querySelector(".wrapper");
const loginLink = document.querySelector(".login-link");
const registerLink = document.querySelector(".register-link");
const btnPopUp = document.querySelector(".btnLogin-popup");
const btnGetStarted = document.querySelector(".button-56");
const iconClose = document.querySelector(".icon-close");
console.log(iconClose);

registerLink.addEventListener("click", (e) => {
  e.preventDefault();
  wrapper.classList.add("active");
});

loginLink.addEventListener("click", (e1) => {
  e1.preventDefault();
  wrapper.classList.remove("active");
});

btnPopUp.addEventListener("click", (event) => {
  event.preventDefault();
  wrapper.classList.add("active-popup");
});

btnGetStarted.addEventListener("click", (event) => {
  event.preventDefault();
  wrapper.classList.add("active-popup");
});

document.addEventListener("click", (e1) => {
  if (e1.target.closest(".icon-close")) {
    e1.stopPropagation();
    e1.preventDefault();
    console.log("clicked");
    wrapper.classList.remove("active-popup");
  }
});

document.addEventListener("DOMContentLoaded", function () {
  const urlParams = new URLSearchParams(window.location.search);
  const status = urlParams.get("status");
  console.log(status)
  if (status === "success") {
    alert("Registration successful!");
  } else if (status === "failure") {
    alert("Registration failed. Please try again.");
  } else if (status === "error") {
    alert("An error occurred. Please try again later.");
  }
});
