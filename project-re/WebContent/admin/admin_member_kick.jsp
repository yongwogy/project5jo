<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!-- header 파일 불러오기 -->
<%@ include file="/header.jsp" %>
    
    <section>
		<div id="contents" class="col-10 container-fluid">
			<article class="row h-50">
				<h3>회원 강제 탈퇴</h3>
				<form action="<%=request.getContextPath() %>/AdminDelete.sw" method="post">
					<input type="hidden" name="grade" value="${sessionScope.grade}">
					<input type="hidden" name="id" value="${param.id }"> 
					<input type="hidden" name="page" value="${param.page }"> 
					<table class="table table-bordered">
						<tr>
							<td colspan="2" class="text-center">
								탈퇴시키시려면 '<span style = 'color:red;'>회원탈퇴</span>' 를 입력하세요
							</td>
						</tr>
						<tr>
							<th>입력창</th>
							<td>
								<input type="text" name="check" id="check" maxlength="4">
							</td>
						</tr>
						<tr>
							<td colspan="2" class="text-center">
								<input type="submit" value="탈퇴">
								<input type="reset" value="취소">
							</td>
						</tr>
					</table>
				</form>
			</article>
		</div>
	</section>
	
<!-- footer 파일 불러오기 -->
<%@ include file="/footer.jsp" %>