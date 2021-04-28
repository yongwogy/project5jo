<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	/* notice */
	#del_tab {
		margin: 0 auto;
		height: 100px;
	}

</style>

    
<!-- header 파일 불러오기 -->
<%@ include file="/header.jsp" %>
    
    <section>
		<div id="contents" class="col-10 container-fluid">
			<article class="row h-50">
				<div class="position-relative">
					<h3 class="position-absolute top-50 start-50 translate-middle-x">공지사항 삭제</h3>
				</div>
				<div>
					<form action="<%=request.getContextPath() %>/NoticeDelete.sh" method="post">
						<input type="hidden" name="grade" value="${sessionScope.grade}">
						<input type="hidden" name="num" value="${param.num }"> 
						<input type="hidden" name="page" value="${param.page }"> 
						<table id="del_tab" class="table table-bordered border-dark w-50">
							<tr>
								<td colspan="2" class="text-center">
									삭제하시려면 '<span style = 'color:red;'>지금삭제</span>' 를 입력하세요
								</td>
							</tr>
							<tr>
								<th class="text-center">입력창</th>
								<td>
									<input type="text" name="check" id="check" maxlength="4">
								</td>
							</tr>
							<tr>
								<td colspan="2" class="text-center">
									<input type="submit" class="btn btn-secondary btn-sm" value="삭제">
									<input type="reset" class="btn btn-secondary btn-sm" value="취소">
								</td>
							</tr>
						</table>
					</form>
				</div>
			</article>
		</div>
	</section>
	
<!-- footer 파일 불러오기 -->
<%@ include file="/footer.jsp" %>