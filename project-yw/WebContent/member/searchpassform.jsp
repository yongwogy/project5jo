<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!-- 외부 자바스크립트 파일 불러오기 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./member/a_searchpass.js"></script>

 
<!-- header 파일 불러오기 -->
<%@ include file="/header.jsp" %>

    <section>
		<div id="contents" class="col-10 container-fluid">    

<form method="post" action="<%=request.getContextPath() %>/SearchPassOperation.yw"> 
<table border=1 width=500 align=center style="color : green">
	<caption class="captop">비밀번호 찾기</caption>
	
	<tr>
		<td>ID</td>
		<td><input type=text id="id" name="id"></td>
	</tr>	
			
	<tr>
		<td>성명</td>
		<td><input type=text id="name" name="name"></td>
	</tr>

	<tr>
		<td>E-Mail</td>
		<td><input type=text size=10 id="mailid" name="mailid">@
		    <input type=text size=10 id="domain" name="domain">
		    <select id="email">
		    	<option value="">직접입력</option>
		    	<option value="naver.com">네이버</option>
		    	<option value="daum.net">다음</option>
		    	<option value="nate.com">네이트</option>
		    	<option value="gmail.com">gmail</option>
		    </select>		    
		 </td>
	</tr>
	

	<tr>
		<td colspan=2 align=center>
			<input type=submit value="비밀번호 찾기">
			<input type=reset value="취소">
		</td>
	</tr>		
</table>
</form>


		</div>
	</section>
	
<!-- footer 파일 불러오기 -->
<%@ include file="/footer.jsp" %>

