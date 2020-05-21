const formDisplay = () => {
  if (document.querySelector("#booking-button")) {
    const button = document.querySelector("#booking-button");
    const form = document.querySelector(".booking-form");
    button.addEventListener("click", (event) => {
      form.style.display = "block";
    });
  }
};

export { formDisplay };
