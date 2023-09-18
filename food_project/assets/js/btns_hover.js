btns_hover()

function btns_hover(){
        let btns = document.querySelectorAll(".btns_hover")
        // console.log(btns[0].style.color)
        for(let i = 0 ;i<btns.length ;i++){
            btns[i].addEventListener("mouseover",function(){
                    btns[i].style.color = "white"
                    btns[i].style.backgroundColor = "orange"
            })
            btns[i].addEventListener("mouseout",function(){
                    btns[i].style.color = "black"
                    btns[i].style.backgroundColor = "rgba(207, 207, 207, 0.562)"
            })
        }
}