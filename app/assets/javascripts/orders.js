// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


function responseToJSON(response) {
    return response.json();
}

function updateOrder(id) {
    const params = {
        content: true
    };

    fetch(`/orders/${id}`, {
        method: "PUT",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify(params)
    })
        .then(responseToJSON)
        .then(function (data) {
            // const showTodoDiv = document.querySelector("#show-todo");
            // const html = `
            // <h2>Todo ${id}</h2>
            // <p>${data.content}</p>
            // <p>Completed: ${data.completed}</p>
            // <p>Created at: ${data.created_at}</p>
            // `;

            // showTodoDiv.innerHTML = html;
            console.log(data);
        });
}
function update(){
    const btn=document.querySelector(".btn");
    console.log(btn.id);
    updateOrder(btn.id);
}
