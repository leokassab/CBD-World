const merchantSignUp = () => {

  const checkbox = document.querySelector("#user_merchant");
  checkbox.addEventListener("click", (event) => {
    const merchant = document.querySelector("#merchant_form");
    // const checkbox = document.querySelector("#user_merchant");
    if (checkbox.checked === true) {
      merchant.style.display = "";
    } else {
      merchant.style.display = "none";
    }
  });
}

export { merchantSignUp }
