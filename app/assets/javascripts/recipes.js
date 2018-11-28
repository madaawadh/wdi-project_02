// function addIngredientAndRecipe() {
//     {
//         recipe: {
//             name: "....",
//             duration: "////",
//             ingredients_attributes: [
//                 {}, 
//                 {},
//                 {}
//             ]
//         }
//     }
//     // fetch("/...........")
// }

function responseToJson(response) {
    return response.json();
}

function addNewRecipe(title, steps,image,a) {
    let params = { title: title, steps: steps, image: image,a: a};
    fetch("/recipes", {
       method: "POST",
        headers: {
            "content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify(params)
   }).then(responseToJson)
    .then(data => {
    addNewIngredient(item, item2, data.id)  
     console.log(data);
    });
}
function addNewIngredient(name, quan, id) {
    let params = { name: name, quan: quan, id: id};
    fetch("/ingredients", {
        method: "POST",
        headers: {
            "content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify(params)
    }).then(responseToJson)
        .then(data => {
            console.log(data);
        });
}
let item ,item2;
window.onload = function () {

    const form = document.querySelector("#recipe_form");
    const input = document.querySelector("#title");
    const input2 = document.querySelector("#steps");
    const input3 = document.querySelector("#image"); 
    const input4 = document.querySelector("#name");
    const input5 = document.querySelector("#quan");

    
    form.addEventListener("submit", function (e) {
        e.preventDefault();
        const input6 = document.querySelector(".Breakfast");
        const input7 = document.querySelector(".Lunch");
        const input8 = document.querySelector(".Dinner");
        const input9 = document.querySelector(".Dessert");
        const input10 = document.querySelector(".Snack");
let a=[];
        if (input6.checked === true) {
            console.log("TRY", input6.id);
            a.push(input6.id);
        }
        if (input7.checked === true) {
            console.log("TRY", input7.id);
            a.push(input7.id);
        }
        if (input8.checked === true) {
            console.log("TRY", input8.id);
            a.push(input8.id);
        }
        if (input9.checked === true) {
            console.log("TRY", input9.id);
            a.push(input9.id);
        }
        if (input10.checked === true) {
            console.log("TRY", input10.id);
            a.push(input10.id);
        }
        
        item = input4.value;
        item2 = input5.value;
        addNewRecipe(input.value, input2.value, input3.value,a);
    });

};

