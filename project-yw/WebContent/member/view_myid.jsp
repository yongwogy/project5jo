<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!-- header 파일 불러오기 -->
<%@ include file="/header.jsp" %>
    
    <section>
		<table border=1 width=350 align=center style="color : green">
			<caption>내ID</caption>
				<tr>
					<td>ID</td>
					<td>${member.id }</td>
				</tr>
	
				<tr>
					<td colspan=4 align=center>
						<input type="button" value="로그인으로 이동" onClick="location.href='<%=request.getContextPath() %>/LoginForm.yw'">			
					</td>
				</tr>

			</table>
	</section>
	
<!-- footer 파일 불러오기 -->
<%@ include file="/footer.jsp" %>
