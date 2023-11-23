mypage_clickEvent();
function mypage_clickEvent() {
    let my_color = document.querySelectorAll(".my_1")
    let index = 0;
    my_color[0].style.color = "orange"
    for (let j = 0; j < my_color.length; j++) {
        my_color[j].addEventListener("click", function () {
            my_color[j].style.color = "orange"
            index = j
        })
        my_color[j].addEventListener("mouseover", function () {
            my_color[j].style.color = "orange"
        })
        my_color[j].addEventListener("mouseout", function () {
            for (let z = 0; z < my_color.length; z++) {
                if (z != index)
                    my_color[z].style.color = "black"
            }
        })
    }
}