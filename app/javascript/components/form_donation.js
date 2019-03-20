var input_donation = document.querySelectorAll("input[type=radio]")
var params_donation = document.querySelector("#plan_params")
//var form_donation = document.querySelector("#edit_donation")

const initFormDonation = () => {
  input_donation.forEach(function(input) {
    input.addEventListener("click", (event) => {
      params_donation.setAttribute("value", input.value);
    });
  });
};

export{initFormDonation};
