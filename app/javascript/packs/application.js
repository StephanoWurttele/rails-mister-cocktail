// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import 'bootstrap';
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

if (document.querySelector(".cocktail-list")) {
    document.querySelectorAll(".img-gradient").forEach ((image) => {
        image.addEventListener('click', (event) => {
            const drink = image.parentElement.querySelector(".cocktail_img").dataset
            const drink_ingredients = JSON.parse(drink.ingredients);
            console.log(drink_ingredients);
            const ingr_name = document.querySelector(".cocktail-description h3");
            const ingr_desc = document.querySelector(".cocktail-description p");
            const ingr_list = document.querySelector(".cocktail-ingredients");
            ingr_list.innerHTML = "";
            ingr_name.innerHTML = drink.name;
            ingr_desc.innerHTML = drink.desc;

            drink_ingredients.forEach ((ingredient) => {
                ingr_list.insertAdjacentHTML("beforeend", `<div class="cocktail-ingredient">${ingredient.name}</div>`)
            });
        });
    });
}
