<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- 외부 자바스크립트 파일 불러오기 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./member/a_login.js"></script>


	<!-- header 파일 불러오기 -->
	<%@ include file="/header.jsp"%>


</head>
<body>
	<section>
		<div id="contents" class="col-10 container-fluid">  
		<form method="post" action="<%=request.getContextPath()%>/Login.yw">
			<table border=1 width=400 align=center style="color : green">
				<caption>로그인</caption>
				<tr>
					<td>ID</td>
					<td colspan=2><input type=text size=30 id="id" name="id"
						autofocus="autofocus"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td colspan=2><input type="password" size=30 id="pass" name="pass"></td>
					<td><input type="submit" value="로그인"> </td>
				</tr>
				<tr>
					<td colspan=4 align=center>
						<input type="button" value="아이디찾기" onClick="location.href='<%=request.getContextPath()%>/SearchId.yw'">
						<input type="button" value="비밀번호찾기" onClick="location.href='<%=request.getContextPath()%>/SearchPass.yw'">
						<input type="reset" value="취소">
					</td>
				</tr>

			</table>
		</form>
		</div>
	</section>

	<!-- footer 파일 불러오기 -->
	<%@ include file="/footer.jsp"%>

