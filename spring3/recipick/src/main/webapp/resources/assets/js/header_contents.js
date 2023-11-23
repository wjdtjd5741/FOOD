content_pop();
logs_event()
function content_pop() {
    document.querySelector(".list").addEventListener("click", function () {
        let a = document.querySelector(".list > div");
        if (a.style.display != "inline-block") {
            a.style.display = "inline-block";
        } else
            a.style.display = "none";
    });
}

function logs_event(){
    let logs = document.querySelectorAll(".login_box0 a")
    for(let i = 0 ;i<logs.length ;i++){
        logs[i].addEventListener("mouseover",function(){
            logs[i].style.color = "black"
        })
        logs[i].addEventListener("mouseout",function(){
            logs[i].style.color = "white"
        })
    }
}