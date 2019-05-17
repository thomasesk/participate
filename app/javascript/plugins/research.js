const form = document.querySelector(".form-search");
const query = document.querySelector(".research");
const delete_cross = document.querySelector(".cross");

const deleteSearch = () => {
  if (delete_cross) {
    delete_cross.addEventListener("click", (event) => {
      query.value = "";
      form.submit();
    });
  };
};

deleteSearch();

export { deleteSearch };
