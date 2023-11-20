likeNdislike();
        
function likeNdislike() {
    let downU = document.querySelector(".up_count");
    let downC = document.querySelector(".down_count");
    document.querySelector(".up > img").addEventListener("click", function () {
        if (downU.style.color != "orange" && downC.style.color != "gray") {
            document.querySelector(".up_count").innerText = parseInt(document.querySelector(".up_count").innerText) + 1;
            document.querySelector(".like_count").innerText = document.querySelector(".up_count").innerText;
            document.querySelector(".up_count").style.color = "orange";
            alert("추천되었습니다.");
        } else if (downU.style.color == "orange") {
            document.querySelector(".up_count").innerText = parseInt(document.querySelector(".up_count").innerText) - 1;
            document.querySelector(".up_count").innerText = document.querySelector(".up_count").innerText;
            document.querySelector(".up_count").style.color = "black";
        } else if (downC.style.color == "gray") {
            alert("추천할 수 없습니다.");
        }
    });
    document.querySelector(".down > img").addEventListener("click", function () {
        if (downU.style.color != "orange" && downC.style.color != "gray") {
            document.querySelector(".down_count").innerText = parseInt(document.querySelector(".down_count").innerText) + 1;
            document.querySelector(".down_count").style.color = "gray";
            alert("비추천되었습니다.")
        } else if (downC.style.color == "gray") {
            document.querySelector(".down_count").innerText = parseInt(document.querySelector(".down_count").innerText) - 1;
            document.querySelector(".down_count").style.color = "black";
        } else if (downU.style.color == "orange") {
            alert("비추천할 수 없습니다.");
        }
    });
    
}