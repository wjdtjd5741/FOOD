search_event();
        
function search_event(){
    let input_text = document.querySelector("#search_text");
    document.querySelector(".search_bar > input").addEventListener("keyup",function(event){
        if(event.keyCode === 13 && input_text.value != "")
            window.open(`searchpage.html?data=${input_text.value}`);
    });
    document.querySelector(".search_bar > img").addEventListener("click", function(){
        if(input_text != "")
            window.open(`searchpage.html?data=${input_text.value}`);
    });

    let hashtags = document.querySelectorAll(".hashtags")
    for(let i = 0 ; i<hashtags.length ;i++){
        hashtags[i].addEventListener("click",function(){
            let text = hashtags[i].innerText;
            window.open(`searchpage.html?data=${text.substring(1)}`)
        })
    }
    
    // document.querySelector("#hash").addEventListener("click",function(){
    //     window.open(`searchpage.html?data=${document.querySelector("#hash").innerText.substring(1)}`)
    // });
}