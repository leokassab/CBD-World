const putIntoBasket = () => {

  const command = document.querySelector("#order");
  if (command) {
    command.addEventListener("click", () => {
    const badge = document.querySelector(".badge");
    if (badge.style.display = "none") {
      badge.style.display = "";
    } else {
      badge.value = badge.value + 1;
    }
  });
  }

}

export { putIntoBasket }
