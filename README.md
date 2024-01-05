# 레시Pick!

### ・ 프로젝트 개요
Java와 Spring 프레임워크, Oracle DB를 활용한 레시피 작성/등록 웹 서버 개발<br>

<i>[인원 / 기간]</i><br>
4명(이기영, 이정성, 강신영, 김호연) / 2023.08.28 ~ 2023.12.04 (약 3개월)<br>

<i>[소개]</i><br>
레시Pick 웹 서비스는 사용자가 웹페이지에 등록된 레시피를 볼 수 있으며 자신의 레시피를 입력해 공유할 수 있는 서비스입니다.<br>
<br>
등록된 레시피에 댓글 / 후기 서비스를 이용하기 위해서는 로그인이 필수적이며, 로그인 없이 회원가입, 로그인, 메인 페이지, 레시피 열람에 한에서만 이용할 수 있습니다.<br>
<br>
회원가입한 회원은 마이페이지로 회원정보 관리, 작성한 레시피, 찜한 레시피 목록을 확인할 수 있습니다.<br>
검색창에 검색어 입력 / 각 페이지 별 존재하는 해시태그를 클릭하면 검색 페이지에 해당 검색어 해당되는 게시물이 최신순 / 조회순으로 보여집니다.<br>

<br>
<i>[목표 및 개발과정]</i><br>
3차에 걸친 프로젝트를 통해 팀원 모두가 개발의 전과정을 경험 하는 것을 목표로 했습니다.<br>
<br>
・ 1차 프로젝트<br>
&nbsp;스토리보드와 일정을 수립하고 VSCode를 이용하여 HTML과 CSS로 UI를 작성했습니다.<br>
・ 2차 프로젝트<br>
&nbsp;페이지 별 요구사항을 취합해 스토리보드를 수정하고 반응형 웹 페이지와 Javascript를 이용해 동적 페이지 구현했습니다. <br>
・ 3차 프로젝트<br>
&nbsp;DB를 설계하고


<br>
<br>
<i>[고도화 계획]</i><br>
Java ORM 기술(JPA) 도입, (네이버, 카카오 등..)API으로 로그인 / 회원가입 기능 추가 / 공공기관 API 활용, Interceptor, filter와 같은 AOP 적용 <br>
<br>
<br>

### ・ 개발환경
・ Frontend : HTML, CSS, JS(ES6)<br>
・ Backend : Java, Spring Boot, Mybatis<br>
・ Server : Apache Tomcat 9.0<br>
・ DB : OracleDB<br>
・ Library : JQuery, JSTL, EL<br>
・ IDE & Collaboration : VSCode, Eclipse, SQL Developer, Git, Notion<br>
<br>
<br>
### ・ 스토리보드
<details>
<summary>접기/펼치기</summary>
<h3>・ 로그인 / 회원가입 페이지 </h3><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/f767b0fa-c6a3-45f7-ae89-044aeb9ec965">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/860278c8-1a13-4b4d-9bdc-f9585aab3860"><br>
<h3>・ 메인 페이지 </h3><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/46986824-2139-48e5-8735-c15499b3b29a">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/fc1ae5c4-9bba-4610-ac20-9d3c6e03cb87"><br>
<h3>・ 레시피 페이지 </h3><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/c79b25b7-46e9-441a-92f9-20658dd642d1">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/71dabc51-d730-472d-bcc2-50577d36fadd"><br>  
<h3>・ 게시판 페이지 (레시피 / 후기) </h3><br>
<img width="400px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/a398e959-543b-487f-8154-024bd4db3eb1">
<img width="400px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/fbe39471-1704-4c55-bfbc-edd56d8dacbc"><br>
<img width="300px" height="300px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/045aa2a8-01cf-490f-a13e-002c0cc5abe7">
<img width="300px" height="300px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/617c55a2-f2f2-4e73-84ac-7aada230a95a"><br>
<h3>・ 후기 페이지 </h3><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/1f71eb8b-3e4d-453f-9790-5e7882a1125d">
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/17cf8a1e-67cd-421a-aace-9ec13538e502"><br>
<h3>・ 레시피 작성 페이지 </h3><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/8644a6a4-f933-4893-aa2f-fdd8c6c561cb">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/4c532013-4553-4e6a-9f92-6f63ab2b0a0d"><br>
<h3>・ 후기 작성 페이지 </h3><br> 
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/11d4fa6e-dca8-4f12-a0e5-e3d702661ca8">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/6be0fee7-aa02-43b2-b307-ce5ff80995de"><br>
<h3>・ 검색 페이지 </h3><br>
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/22c3e285-6136-4e94-91a3-026c0e75929d">
<img width="300px" height="500px" src="https://github.com/wjdtjd5741/FOOD/assets/111046436/1ff45e36-aeaa-4526-b4ba-e28e215b6359"><br>
</details>

<br>
<br>
### ・ 일정

<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/c0948674-3068-4f2d-90b1-bb371a2629cf"><br>
<br>
### ・ ERD
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/e5e6f08d-c66b-461a-bddb-edab7d689820"><br>
<br>
### ・ FlowChart
<img src="https://github.com/wjdtjd5741/FOOD/assets/111046436/1faf2634-322b-49b4-aac1-2bbf92b2ba64"><br>
<br>
<br>
### ・ 후기
이기영 :
<br>
<br>
이정성 : 프로젝트를 진행하면서 간단한 사이트 하나를 만드는데 얼만큼의 공부와 시간과 노력이 담겨야 하는지 알게 되었습니다. 개인의 활동이 아닌 개인이 모여 팀으로 진행하게 되었을 때의 책임감과 시간에 쫓기지 않고 여유롭게 하기 위해 더 공부 할 수 있는 계기가 만들어진 것 같아 뿌듯한 시간이었습니다. <br>
잘 알지 못했던 JSP와 Servlet을 눈이 뜨이게 해줬던 프로젝트같아 더 배우고싶은 원동력이 되었고 그동안 부족했던 html과 css도 보완 할 수 있게 해준 시간이었습니다.
<br>
<br>
강신영 : 프로젝트를 시작할때만해도 클래스와 메서드가 힘들어서 앞이 보이지않을것만 같았지만 팀원분들의 도움을받아 끊임없는 노력과 열정으로 극복해냈습니다. 
내가 이해하고 만든 코드들이 작동되는걸 보면서 뿌듯함과 감동을 느꼇습니다.<br>
다시 막히고 답답한 시간도 있었지만 고민하고 궁금해하면서 문제를 해결했던것 같습니다.이러한 경험을 통해 제자신이 한층더 성장할수있는 발판이 되었습니다.<br>
하지만 아쉬웠던 점은 개발자 중심적인 코드개발로 좀더 사용자 친화적개발을 하지 못한점이 아쉬웠던것 같습니다.앞으로는 생각하는 방향을 좀더 사용자친화적인 방향으로 하는 습관을 기르고자 합니다.<br>
이러한 경험들을 바탕으로 미래의 프로젝트에서 더좋은 결과를 끌어내기위해 노력과 열정으로 공부해나가며 성장하겠습니다! 
<br>
<br>
김호연 : 프로젝트를 처음 시작할 때, 내가 맡은 파트를 성공적으로 완수할 수 있을지에 대한 불안감이 가득했습니다. 이전까지의 경험과 학습으로는 충분할지 의문이 들었고, 코드 작성하는 과정에서는 자신감이 떨어지는 순간들이 많았습니다. 그러나 시간이 흐를수록 점차적으로 코드 작성에 대한 능숙함이 쌓여갔고, 팀원들과의 협력으로 어려움을 극복할 수 있었습니다.
이러한 경험을 통해 미래의 프로젝트에서는 더 나은 성과를 이루기 위해 더욱 열심히 공부하고 성장해야 한다는 결심을 다짐했습니다. 이번 경험은 두려움과 불안에서부터 성장과 성취감으로 이끌어 준 소중한 시간이었습니다. 앞으로는 이런 귀중한 경험을 토대로 더 나은 개발자로 성장해 나가고 싶습니다.
<br>
<br>
