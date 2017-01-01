document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  // --- your code here!

  const handlePlaceSubmit = (e) => {
    e.preventDefault();

    const placeInput = document.getElementsByClassName("favorite-input")[0];
    const place = placeInput.value;
    placeInput.value = "";

    const li = document.createElement("li");
    li.textContent = place;

    const ul = document.getElementById("sf-places");
    ul.appendChild(li);
  };

  const placeSubmitButton = document.getElementsByClassName("favorite-submit");
  placeSubmitButton[0].addEventListener("click", handlePlaceSubmit);


  // adding new photos
  // --- your code here!

  const showPhotoForm = (e) => {
    const photoForm = document.querySelector(".photo-form-container");
    if (photoForm.className === "photo-form-container") {
      photoForm.className = "photo-form-container hidden";
    } else {
      photoForm.className = "photo-form-container";
    }
  };

  const photoFormButton = document.querySelector(".photo-show-button");
  photoFormButton.addEventListener("click", showPhotoForm);

  const handlePhotoSubmit = (e) => {
    e.preventDefault();

    const photoURLInput = document.querySelector(".photo-url-input");
    const photoURL = photoURLInput.value;
    photoURLInput.value = "";

    const img = document.createElement("img");
    img.src = photoURL;

    const li = document.createElement("li");
    li.appendChild(img);

    const ul = document.querySelector(".dog-photos");
    ul.appendChild(li);
  };

  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", handlePhotoSubmit);
});
