content_pop();

function content_pop() {
    document.querySelector(".list").addEventListener("click", function () {
        let a = document.querySelector(".list > div");
        if (a.style.display != "inline-block") {
            a.style.display = "inline-block";
        } else
            a.style.display = "none";
    });
}