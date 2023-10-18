mobile_pop();

function mobile_pop() {
    window.addEventListener("resize", function () {
        if (window.innerWidth < 700) {
            document.querySelector(".mobile_console").style.display = "block";
        } else
            document.querySelector(".mobile_console").style.display = "none";
    });
}