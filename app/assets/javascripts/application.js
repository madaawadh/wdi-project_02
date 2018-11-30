// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
let p=0;
let pp;
let orderId=0;
window.onload = function () {

}
let q = 1;
let arr=[];
let totalprice;
function fun(){
    pp = document.querySelector("#productTry");
    console.log(pp);
    const price = document.querySelector("#price");
    p = price.innerHTML;

    
    const quant = document.querySelector("#quant"); 
    const price1 = document.querySelector("#totalPrice");
    q=++q;
    quant.innerHTML=q;
    
    price1.innerHTML = p * q;
    totalprice = p * q;

}
let total=0;
function order() {
    const order1 = document.querySelector(".sameorder");
    console.log(order1);
    addNewItem(q, totalprice, pp.innerHTML, order1.id);
}
function cart() {
    // addNewItem(q, totalprice, pp.innerHTML);
    arr.push({
        quant: q, price: totalprice, p_id: pp.innerHTML
    });
for(let i=0;i>arr.length;i++){
    total+=arr.price;
}
    addNewOrder(totalprice);
    location.reload();
//    const div1 = document.createElement("div");
//     div1.setAttribute("class", "items");
//     const order = document.querySelector(".order");
//     console.log(order);
//     order.appendChild(div1); 
//     let q1=document.createElement("p");
//     q1.setAttribute("id", pp.innerHTML);
//     q1.innerHTML=q;
//     div.appendChild(q1); 
//     let p = document.createElement("p");
//     p.setAttribute("class", "p");
//     p.innerHTML=totalprice;
//     div.appendChild(p); 
   
    // let id = document.createElement("p");
    // id.setAttribute("class", "id");
    // console.log(arr);

}
// function divs(){
//     const items = document.querySelectorAll(".items");
//     for (var i = 0; i < items.length; i++) {
//         console.log( items[i]);
//     }
// }
function responseToJson(response) {
    return response.json();
}

function addNewItem(quantity, price,product_id,order_id) {
    let params = { quantity: quantity, price: price, product_id: product_id ,order_id: order_id};
    fetch("/items", {
        method: "POST",
        headers: {
            "content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify(params)
    }).then(responseToJson)
        .then(data => {
            // addNewIngredient(item, item2, data.id)
            console.log(data);
        });
}

function addNewOrder(price) {
    // someSessionVariable = `@Session[${0}]`;
    let params = { price: price };
    fetch("/orders", {
        method: "POST",
        headers: {
            "content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify(params)
    }).then(responseToJson)
        .then(data => {
            console.log(data);
            orderId =data.id
            addNewItem(q, totalprice, pp.innerHTML, orderId);
        });
}
// let item, item2;
// window.onload = function () {

//     const form = document.querySelector("#recipe_form");
//     const input = document.querySelector("#title");
//     const input2 = document.querySelector("#steps");
//     const input3 = document.querySelector("#image");
//     const input4 = document.querySelector("#name");
//     const input5 = document.querySelector("#quan");


//     form.addEventListener("submit", function (e) {
//         e.preventDefault();
//         const input6 = document.querySelector(".Breakfast");
//         const input7 = document.querySelector(".Lunch");
//         const input8 = document.querySelector(".Dinner");
//         const input9 = document.querySelector(".Dessert");
//         const input10 = document.querySelector(".Snack");
//         let a = [];
//         if (input6.checked === true) {
//             console.log("TRY", input6.id);
//             a.push(input6.id);
//         }
//         if (input7.checked === true) {
//             console.log("TRY", input7.id);
//             a.push(input7.id);
//         }
//         if (input8.checked === true) {
//             console.log("TRY", input8.id);
//             a.push(input8.id);
//         }
//         if (input9.checked === true) {
//             console.log("TRY", input9.id);
//             a.push(input9.id);
//         }
//         if (input10.checked === true) {
//             console.log("TRY", input10.id);
//             a.push(input10.id);
//         }

//         item = input4.value;
//         item2 = input5.value;
//         addNewRecipe(input.value, input2.value, input3.value, a);
//     });

// };

