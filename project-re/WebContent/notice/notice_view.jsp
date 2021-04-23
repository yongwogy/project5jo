<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!-- header 파일 불러오기 -->
<%@ include file="/header.jsp" %>
    
    <section>
		<div id="contents" class="col-10 container-fluid">
			<article class="row h-50">
				<h3></h3>
				<table class="table table-bordered">
					<tr>
						<th>제목</th>
						<td>
							${notice.subject}
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							${notice.id}
						</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td>
							<fmt:formatDate value="${notice.reg_date}" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							${content}
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<c:if test="${sessionScope.grade eq '1' }">
								<input type="button" value="수정"
									onClick="location.href='./NoticeModifyAction.sh?num=${notice.num}&page=${page}'">
								<input type="button" value="삭제"
									onClick="location.href='./NoticeDeleteAction.sh?num=${notice.num}&page=${page}'">
							</c:if>
							<input type="button" value="목록"
								onClick="location.href='./NoticeListAction.sh?page=${page}'">
						</td>
					</tr>
				</table>
			</article>
		</div>
	</section>
	
<!-- footer 파일 불러오기 -->
<%@ include file="/footer.jsp" %>