heart_counter();

function heart_counter() {
    document.querySelector(".heart_text").addEventListener("click", function () {
        if (document.querySelector(".heart_text").innerText == "♥") {
            document.querySelector(".heart_text").innerText = "♡";
            document.querySelector(".pick_count").innerText = parseInt(document.querySelector(".pick_count").innerText) -1
        } else{
            document.querySelector(".heart_text").innerText = "♥";
            document.querySelector(".pick_count").innerText = parseInt(document.querySelector(".pick_count").innerText) +1
        }
            
    });
}