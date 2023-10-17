reci_pop();
        
function reci_pop() {
    let btns = document.querySelectorAll(".select");
    let text = document.querySelectorAll(".food_text");
    console.log(btns);
    for (let i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function () {
            console.log(i);
            if (btns[i].textContent == "▽") {
                text[i].style.display = "block";
                btns[i].textContent = "△";
            } else {
                text[i].style.display = "none";
                btns[i].textContent = "▽"
            }
        });
    }
}