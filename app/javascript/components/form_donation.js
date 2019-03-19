var input_donation = document.querySelector("#user_plan_id")
var params_donation = document.querySelector("#plan_params")
//var form_donation = document.querySelector("#edit_donation")

const initFormDonation = () => {
  input_donation.addEventListener("change", (event) => {
    params_donation.setAttribute("value", input_donation.value);
  })
};

export{initFormDonation};
