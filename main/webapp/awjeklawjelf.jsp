<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="attach">
			<div>
				<img
					src="https://cdn1.iconfinder.com/data/icons/document-edit-line/64/Document-doc-file-folder-bundle-add-new-64.png">
				<input type="file" id="file_input" style="display:none">
			</div>
		</div>
		<div class="attach_font">
			<div>첨부파일</div>
		</div>
		<script>
		file_add()
		function file_add(){
			click_fileImg()
	        document.querySelector("#file_input").addEventListener("change", function () {
	            const file = this.files[0];
	            if (file) {
	                const mediaBox = document.querySelector("#media_box");
	                // 이미지 파일인 경우에만 처리
	                if (file.type.startsWith("image/")) {
	                    const reader = new FileReader();
	                    reader.onload = function (e) {
	                        // 이미지를 생성하고 media_box에 추가
	                        const img = document.createElement("img");
	                        img.src = e.target.result;
	                        mediaBox.innerHTML = ""; // 기존 이미지를 지우고 새 이미지로 대체
	                        mediaBox.appendChild(img);
	                    };
	                    reader.readAsDataURL(file);
	                }
	            }
	        });
		}
		</script>
</body>
</html>