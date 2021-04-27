<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 외부 자바스크립트 파일 불러오기 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./member/a_quitmember.js"></script>

	<!-- header 파일 불러오기 -->
	<%@ include file="/header.jsp"%>


</head>
<body>
	<section>
		<div id="contents" class="col-10 container-fluid">  
		<form method="post" action="<%=request.getContextPath()%>/QuitMemberOperation.yw">
		<input type="hidden" name="id" value="${member.id}">
			<table border=1 width=350 align=center style="color : green">
				<caption class="captop">회원탈퇴</caption>
				<tr>
					<td>ID</td>
					<td colspan=2>${member.id }</td>
				</tr>
				
				<tr>
					<td>비밀번호</td>
					<td colspan=2><input type="password" size=30 id="pass" name="pass"></td>
				</tr>
				
				<tr>
					<td colspan=4 align=center>
						<input type="submit" value="회원탈퇴">
						<input type="reset" value="취소">
					</td>
				</tr>

			</table>
		</form>
		</div>
	</section>

	<!-- footer 파일 불러오기 -->
	<%@ include file="/footer.jsp"%>

