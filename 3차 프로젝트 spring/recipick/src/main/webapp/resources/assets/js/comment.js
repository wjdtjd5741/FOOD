comment();
text_focus();

function comment() {
    document.querySelector(".btn_txt").addEventListener("click", function () {
        let text = document.querySelector(".input_text").value;
        if (text != "") {
            let html = "";
            html += `<div class="reple_box">`
            html += "<div style='display: inline-block; width: 850px;'>작성자</div>";
            html += `<input class='del_btn' type=button value='X' style='font-size: 10px;'>`;
            html += `<div>${text}</div>`
            // console.log(document.querySelector(".comment_box"));
            document.querySelector(".comment_box").innerHTML += html;
            document.querySelector(".input_text").value = "댓글을 남겨주세요.";
        } else
            alert("댓글을 입력해주세요.");

        del_reple();
        reple_count()
    });
}

function text_focus() {
    document.querySelector(".input_text").addEventListener("click", function () {
        document.querySelector(".input_text").value = "";
    });
}

function del_reple() {
    let reple = document.querySelectorAll(".del_btn");
    for (let i = 0; i < reple.length; i++) {
        reple[i].addEventListener("click", function () {
            reple[i].parentNode.remove();
        });
    }
}

function reple_count(){
    document.querySelector(".comment_count").innerText = document.querySelectorAll(".reple_box").length;
}