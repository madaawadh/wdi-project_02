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
let p = 0;
let pp;
let orderId = 0;
let ingredints = [];
function responseToJson(response) {
    return response.json();
}
function addingredints() {
    const table = document.querySelector("#ing_table");
    var tr = table.insertRow(-1);
    var cell1 = tr.insertCell(-1);
    var cell2 = tr.insertCell(-1);


    var name = document.createElement("input");
    name.type = "text";
    var quan = document.createElement("input");
    quan.type = "number";
    quan.value = 1;
    quan.setAttribute("class", "quant");

    // input.className = "css-class-name"; // set the CSS class
    // var br = document.createElement("br");
    // table.appendChild(tr);
    // tr.appendChild(name);
    // tr.appendChild(quan);
    // form.appendChild(br);
    cell1.appendChild(name);
    cell2.appendChild(quan);

    ingredints.push({ name: name, quan: quan })
}

function addNewRecipe(title, steps, image, a) {
    let params = { title: title, steps: steps, image: image, a: a };
    fetch("/recipes", {
        method: "POST",
        headers: {
            "content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify(params)
    }).then(responseToJson)
        .then(data => {
            for (i = 0; i < ingredints.length; i++) {
                addNewIngredient(ingredints[i].name, ingredints[i].quan, data.id);
            }
            location.href = `/recipes/${data.id}`;
        });
}
function addNewIngredient(name, quan, id) {
    let params = { name: name, quan: quan, id: id };
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
let item, item2;
window.onload = function () {
    console.log("test");

    const submit = document.querySelector("#submit");
    const input = document.querySelector("#title");
    const input2 = document.querySelector("#steps");
    const input3 = document.querySelector("#image");
    const name0 = document.querySelector("#name1");
    const quan0 = document.querySelector("#quan1");
    const name1 = document.querySelector("#name2");
    const quan1 = document.querySelector("#quan2");
    const name2 = document.querySelector("#name3");
    const quan2 = document.querySelector("#quan3");
    const name3 = document.querySelector("#name4");
    const quan3 = document.querySelector("#quan4");
    ingredints.push({ name: name0, quan: quan0 }, { name: name1, quan: quan1 }, { name: name2, quan: quan2 }, { name: name3, quan: quan3 });
    if (submit) {
        submit.addEventListener("click", function (e) {
            // e.preventDefault();
            const input6 = document.querySelector(".Breakfast");
            const input7 = document.querySelector(".Lunch");
            const input8 = document.querySelector(".Dinner");
            const input9 = document.querySelector(".Dessert");
            const input10 = document.querySelector(".Snack");
            let a = [];
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
            for (i = 0; i < ingredints.length; i++) {
                ingredints[i].name = ingredints[i].name.value;
                ingredints[i].quan = ingredints[i].quan.value;
                console.log(ingredints[i]);
            }
            // item = input4.value;
            // item2 = input5.value;
            addNewRecipe(input.value, input2.value, input3.value, a);
        });
    }
   
    const form1 = document.querySelector("#gluten");

    const input1 = document.querySelector("#search");
    if (form1) {
    form1.addEventListener("submit", function (ev) {
        ev.preventDefault();
        getGip(input1.value);
    });
}

};


let q = 1;
let arr = [];
let totalprice;
let test;

function fun(event) {
    // debugger;
    // pp = document.querySelector("#productTry");
    pp = event.target.parentNode.parentNode.querySelector("#productTry");
    console.log(pp);
    let p=event.target.parentNode.parentNode.querySelector("#price");
    // let price = event.target.parentNode.parentNode.querySelector("#price");
    // p = price.innerHTML;
    // console.log(p);

    const quant = event.target.parentNode.parentNode.querySelector("#quant");
    const price1 = event.target.parentNode.parentNode.querySelector("#totalPrice");

    
    quant.innerHTML = parseFloat(quant.innerHTML) + 1;

    price1.innerHTML = parseFloat(quant.innerHTML) * parseFloat(p.innerHTML);
    // totalprice = p * q;
 

}
let total = 0;
function order(event) {
    console.log(22)
    const totalPrice = parseFloat(event.target.parentNode.parentNode.querySelector("#totalPrice").innerHTML);
    const quantity = parseFloat(event.target.parentNode.parentNode.querySelector("#quant").innerHTML);
    const productID = event.target.parentNode.parentNode.querySelector("#productTry").innerHTML;
    const orderID = event.target.parentNode.parentNode.querySelector(".sameorder").id
    addNewItem(quantity, totalPrice, productID, orderID);
    // pp = event.target.parentNode.parentNode.querySelector("#productTry");
    // const order1 = document.querySelector(".sameorder");
    // debugger;
    // console.log(order1);
    // addNewItem(q, totalprice, pp.innerHTML, order1.id);
}
function cart(event) {
    const totalPrice = parseFloat(event.target.parentNode.parentNode.querySelector("#totalPrice").innerHTML);
    const quantity = parseFloat(event.target.parentNode.parentNode.querySelector("#quant").innerHTML);
    const productID = event.target.parentNode.parentNode.querySelector("#productTry").innerHTML;
    // const orderID = event.target.parentNode.parentNode.querySelector(".sameorder").id
    arr.push({
        quant: quantity, price: totalPrice, p_id: productID
    });
    for (let i = 0; i > arr.length; i++) {
        total += arr.price;
    }
    addNewOrder(totalPrice, quantity, productID);
    location.reload();
}

function responseToJson(response) {
    return response.json();
}

function addNewItem(quantity, price, product_id, order_id) {
    let params = { quantity: quantity, price: price, product_id: product_id, order_id: order_id };
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
            location.href = `/products/`;
        });
}

function addNewOrder(price, quantity, productID) {
    // someSessionVariable = `@Session[${0}]`;
    let params = { price: price };
    fetch("/orders", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify(params)
    }).then(responseToJson)
        .then(data => {
            console.log(data);
            orderId = data.id
            addNewItem(quantity, price, productID, orderId  );
            // addNewItem(q, totalprice, pp.innerHTML, orderId);
        });
}
// const apiKey = "HbAQEbnB7ao2wMDmoRPOZQsfVSDkAKNs";
const method = "GET";
// const params = `?api_key=${apiKey}&tag=burrito`;
// const url=baseURL+path+params;

const httpOptions = {
    method: method,
};
function turnResponseIntoObject(responce) {
    console.log("loading");
    return responce.json();
}
function displayData(data) {
    const container = document.querySelector(".continer");

    console.log(data);
    let str = "it doesn't include gluten";
    for (let i = 0; i < data.products[0].allergens_tags.length; i++) {

        if (data.products[0].allergens_tags[i] == "en:gluten") {
            str = "this Product includes gluten";
        }
    }
    const html = `<h1>${str}</h1>
  <img src=${data.products[0].image_front_url}>`;
    container.innerHTML = html;
}

function getGip(searchItem) {
    const baseURL = `https://world.openfoodfacts.org/cgi/search.pl?search_terms=${searchItem}&search_simple=1&action=process&json=1`;
    console.log(searchItem);
    fetch(baseURL, httpOptions)
        .then(turnResponseIntoObject)
        .then(displayData);
}



