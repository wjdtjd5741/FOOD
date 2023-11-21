<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>

</style>
<body>
    <div class="table_all">
        <table>
            <thead>
                <tr>
                    <th class="num">번호</th>
                    <th class="img">이미지</th>
                    <th class="title">제목</th>
                    <th class="date">날짜</th>
                    <th class="writer">작성자</th>
                    <th class="look">조회수</th>
                </tr>
            </thead>
            <tbody>
<%--			
                <tr class="lines">
                <div class="bulletinID"></div>
                    <td class="tb_num_color">1</td>
                    <td><img src="<%= rDTO.get(0).getMainPic() %>"></td>
                    <td><%= rDTO.get(0).getTitle() %></td>
                    <td><%= rLib.getDateYYMMDD() %></td>
                    <td><%= rDTO.get(0).getWriter() %></td>
                    <td><%= rDTO.get(0).getView() %></td>
                </tr>
                
                 5개 까지 
--%>
            </tbody>
        </table>
    </div>
</body>