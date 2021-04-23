<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!-- header 파일 불러오기 -->
<%@ include file="/header.jsp" %>
    
    <section>
		<div id="contents" class="col-10 container-fluid">
			<article class="row h-50">
				<h3>글 수정</h3>
				<form action="<%=request.getContextPath() %>/NoticeModify.sh" method="post">
					<input type="hidden" name="id" value="${notice.id }">
					<input type="hidden" name="grade" value="${sessionScope.grade}">
					<input type="hidden" name="num" value="${notice.num}">
					<input type="hidden" name="page" value="${page}">
					<table class="table table-bordered">
						<tr>
							<th>제목</th>
							<td>
								<input type="text" name="subject" id="subject" maxlength="100" value="${notice.subject }">
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<textarea class="form-control" name="content" id="content" cols="67" rows="15">${notice.content}</textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="수정">
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