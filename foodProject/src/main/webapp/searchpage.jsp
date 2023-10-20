<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="recipes.RecipesDTO" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>asdfa</title>
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/mobile_console.css">
    <link rel="stylesheet" href="assets/css/j/searchpage_sec0.css">
    <link rel="stylesheet" href="assets/css/s/searchpage_sec1.css">
    <link rel="stylesheet" href="assets/css/s/media/searchpage_sec1.css">
</head>
<body>
<%
	if(request.getAttribute("rDTOList") == null){
		RequestDispatcher dis = request.getRequestDispatcher("searchHash");
		dis.forward(request, response);
	}
	String data = request.getParameter("data");
	List<RecipesDTO> reciList = (List<RecipesDTO>)request.getAttribute("rDTOList");
	
%>
<%@ include file="header.jsp"%>
    <main>
        <nav>
            <%@ include file="mobile_console.jsp"%>
        </nav>
        <section>
            <!-- 이정성 -->
            <div class="search_box">
                <div class="search_box1">
                	<input id="input_text0" type="text" value="<%= data %>">
                </div>
                <div class="search_img" ><img
                        src="https://cdn.discordapp.com/attachments/1148557028927742005/1149214262925987880/search_icon.png">
                </div>
            </div>
            <div class="hash_box">
                <%-- <div class="hashtags">#대파</div> --%>
            </div>
        </section>
        <section>
            <!-- 강신영 높이조절 -->
            <div class="search_root">
                <div class="search_root2">
                    <div class="search_top">
                        <div class="top_first">
                            <div id="input_text1"><%= data %></div>
                            <div>검색결과</div>
                        </div>
                        <div class="search_result">
                            <div class="result1">
                                <div>검색결과</div>
                                <div class="color"><%= reciList.size() %></div>
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
    <script type="text/javascript" src="assets/js/header_contents.js"></script>
    <script type="text/javascript" src="assets/js/search_event.js"></script>
    <script type="text/javascript" src="assets/js/mobile_pop.js"></script>
<%@ include file="footer.jsp"%>
</body>
</html>