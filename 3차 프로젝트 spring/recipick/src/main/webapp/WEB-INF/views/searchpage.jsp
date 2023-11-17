<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
@charset "UTF-8";
.search_box {
    /* border: 1px solid red; */
    display: flex;
    width: 37%;
    height: 50px;
    margin-left: 31.5%;
    justify-content: center;
    margin-top: 80px;
}

.search_box input {
    font-size: 30px;
    border: none;
    /* background-color: orange; */
}
.search_box img{
    width: 50px;
    height: 50px;
}
.search_box1{
    border-bottom: 1px solid gray;
}
.search_box1 > input {
    background-color: transparent;
}

.hash_box {
    /* border: 1px solid blue; */
    display: flex;
    justify-content: center;
}

.hash_box>div {
    border: 3px solid orange;
    width: 100px;
    height: 30px;
    border-radius: 20px;
    font-size: 16px;
    text-align: center;
    line-height: 2;
    font-weight: bold;
    margin: 15px 5px;
}
.hashtags {
    cursor: pointer;
}
/* search0 */
.search_box {
    /* border: 1px solid red; */
    display: flex;
    width: 37%;
    height: 50px;
    margin-left: 31.5%;
    justify-content: center;
/*    margin-top: 80px;*/
}

.search_box input {
    font-size: 30px;
    border: none;
    /* background-color: orange; */
}
.search_box > div:nth-child(){

}
.search_bg{
	background:rgb(255 147 92 / 52%);
	height: 100px;
	padding: 80px;
}
.search_box img{
    width: 50px;
    height: 50px;
    cursor: pointer;
}
.search_box1{
    border-bottom: 1px solid gray;
}
.search_box1 > input {
    background-color: transparent;
}

.hash_box {
    /* border: 1px solid blue; */
    display: flex;
    justify-content: center;
}

.hash_box>div {
    border: 3px solid orange;
    width: 100px;
    height: 30px;
    border-radius: 20px;
    font-size: 16px;
    text-align: center;
    line-height: 2;
    font-weight: bold;
    margin: 15px 5px;
}
.hashtags {
    cursor: pointer;
}

/* search1 */
.search_root {
    display: flex;
    /* border: 1px solid red; */
    width: 100%;
    /* height: 1200px; */
    /* justify-content: center; */
    align-items: center;
    flex-direction: column;
}

.search_root2 {
    display: inline-block;
    width: 85%;
    height: 100%;
}

.color {
    color: orange;
    margin-left: 8px;
}

.search_top {
    height: 220px;
    width: 100%;
    /* border: 1px solid darkblue; */
    display: inline-block;
    /* text-align: center; */
    font-size: 30px;
    font-weight: bold;
}

.top_first {
    display: flex;
    align-items: flex-end;
    justify-content: center;
    width: 100%;
    height: 100px;
}

.top_first>div:nth-child(1) {
    font-size: 30px;
    text-align: center;
    color: orange;
    display: inline-block;
    margin-right: 10px;
}

.top_first>div:nth-child(2) {
    font-size: 30px;
    display: inline-block;
    text-align: center;
}

.search_result {
    display: flex;
    /* position: absolute; */
    width: 100%;
    justify-content: space-between;
    margin-top: 70px;
    /* text-align: center; */
    /* margin-left: 5%; */
}

.result1 {
    font-size: 15px;
    display: inline-block;
    height: 40px;
    width: 170px;
}

.result1>div {
    display: inline-block;
    font-size: 15px;
}

.views {
    width: 130px;
    height: auto;
}

.views>div {
    height: 40px;
    font-size: 15px;
    width: 100%;
}

.recommend {
    display: inline-block;
    font-size: 15px;
    height: 40px;
    text-align: end;
}

.recommend>div {
    font-size: 15px;
    display: inline-block;
}

.recommend>div:nth-child(1) {
    margin-left: 10px;
}

.search_main {
    padding-left: 7px;
    padding-right: 10px;
    /* border: 1px solid chartreuse; */
    width: 100%;
    height: 100%;
    display: flex;
    gap: 60px;
    flex-wrap: wrap;
    margin: 0 auto;
    align-content: flex-start;
}

.menu {
    /* border: 1px solid black; */
    width: 20%;
    height: 260px;

    /* display: inline-block; */
}

.menu>img {
    width: 100%;
    height: 200px;
}

.menu>div {
    display: inline-block;
    margin-right: 5px;
    font-size: 15px;
}

.hash {
    width: 200px;
}

.hash>div {
    color: rgb(131, 131, 131);
    display: inline-block;
    font-size: 14px;

}

</style>

    <main>
<%-- 
        <nav>
            <%@ include file="mobile_console.jsp"%>
        </nav>
--%>
        <section>
        <div class="search_bg">
            <div class="search_box">
                <div class="search_box1">
 
                	<input id="input_text0" type="text" value="${data}" /> <%--<%= data %> --%> 
                	
                </div>
                <div class="search_img" ><img
                        src="https://cdn.discordapp.com/attachments/1148557028927742005/1149214262925987880/search_icon.png">
                </div>
            </div>
            <div class="hash_box">
                <%-- <div class="hashtags">#대파</div> --%>
            </div>
        </div>
        </section>
        <section>
            <div class="search_root">
                <div class="search_root2">
                    <div class="search_top">
                        <div class="top_first">

                            <div id="input_text1">${data }</div>

                            <div>검색결과</div>
                        </div>
                        <div class="search_result">
                            <div class="result1">
                                <div>검색결과</div>
<%--                                
                                <div class="color"><%= reciList.size() %></div>
--%>                                
                                <div>건 조회</div>
                            </div>
                            <div class="views">
                                <div class="recommend">
                                    <div>조회순</div>
                                    <div>추천순</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="search_main">
<%--                    
                    <%
                    	for(int i = 0 ;i<reciList.size() ;i++){
                    %>		
                    	<div class="menu">
                    		<img src="<%= reciList.get(i).getMainPic() %>">
                    		<div class="hash">
                    <%
                    		for(int j = 0 ;j<reciList.get(i).getHashtags().size() ;j++){
                    %>			
                    			<div><%= reciList.get(i).getHashtags().get(j) %></div>
                    <%		
                    		}
                    %>
                    		</div>
                    		<div><%= reciList.get(i).getTitle() %></div>
                    	</div>	
                    <%
                    	}
                    %>
--%>                    
                    </div>
                </div>
            </div>
        </section>
    </main>
    <script>
    get_data();

    function get_data() {
        let data = new URLSearchParams(window.location.search).get("data");
        document.querySelector("#input_text0").value = data;
        document.querySelector("#input_text1").innerText = data;

        document.querySelector(".search_img").addEventListener("click", function () {
            document.querySelector("#input_text1").innerText = document.querySelector("#input_text0").value
        });
        document.querySelector("#input_text0").addEventListener("keyup", function (event) {
            if(event.keyCode == 13)
                document.querySelector("#input_text1").innerText = document.querySelector("#input_text0").value
        });
    }
    
    </script>
    <script type="text/javascript" src="resources/assets/js/header_contents.js"></script>
    <script type="text/javascript" src="resources/assets/js/search_event.js"></script>
<!--     <script type="text/javascript" src="assets/js/mobile_pop.js"></script> -->
