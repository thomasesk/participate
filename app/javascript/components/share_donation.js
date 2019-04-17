var share_donation_inputs = document.querySelectorAll(".share_donation_input")

const initShareDonation = () => {
  share_donation_inputs.forEach(function(input) {
    input.addEventListener("change", (event) => {
      var simple_form_linked = document.getElementById(`edit_donation_${event.currentTarget.dataset.donation}`);
      simple_form_linked.submit();
    });
  });
};

export{initShareDonation};
