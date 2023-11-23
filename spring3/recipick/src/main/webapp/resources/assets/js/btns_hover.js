btns_hover()

function btns_hover(){
        let btns = document.querySelectorAll(".btns_hover")
        let sec0_text = document.querySelectorAll(".text_d")
        console.log(sec0_text)
        for(let i = 0 ;i<btns.length ;i++){
            btns[i].addEventListener("mouseover",function(){
                    btns[i].style.color = "white"
                    btns[i].style.backgroundColor = "orange"
            })
            btns[i].addEventListener("mouseout",function(){
                    btns[i].style.color = "black"
                    btns[i].style.backgroundColor = "rgba(207, 207, 207, 0.562)"
            })
            /*
            btns[i].addEventListener("click",function(){
                if(btns[i].innerText == "수정"){
                        sec0_text[i].disabled = false;
                        btns[i].innerText = "저장"
                    } else{
                        sec0_text[i].disabled = true;
                        btns[i].innerText = "수정"
                    }
            })
            */
        }
}