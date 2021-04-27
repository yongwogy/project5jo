<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- header 파일 불러오기 -->
<%@ include file="/header.jsp"%>

<section>
	<div id="contents" class="col-10 container-fluid">
		<article class="row h-75">
			<h3>공지사항</h3>
			<p>글 갯수 : ${listcount }</p>
			<table class="table table-hover">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>

				<c:set var="num" value="${listcount - (page-1) *10 }" />
				<c:forEach var="n" items="${noticelist }">
					<tr>
						<td>
							<!-- 번호 --> ${num} <c:set var="num" value="${num-1 }" />
						</td>
						<td><a href="./NoticeDetailAction.sh?num=${n.num}&page=${page}">${n.subject}</a></td>
						<td>${n.id}</td>
						<td><fmt:formatDate value="${n.reg_date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
						<td>${n.readcount}</td>
					</tr>
				</c:forEach>
			</table>
			<div class="container">
				<!-- 글쓰기 버튼 -->
				<div>
					<c:if test="${sessionScope.grade eq '1' }">
						<button type="button" class="btn btn-secondary"
							onClick="location.href='./NoticeForm.sh'">글쓰기</button>
					</c:if>
				</div>
				<!-- 페이징 영역 -->
				<div style="float: none; margin: 0 auto;">
					<!-- bootstrap -->
					<c:if test="${listcount > 0 }">
						<div aria-label="...">
							<ul class="pagination">
								<!-- 1 페이지로 이동 -->
								<li class="page-item">
									<a class="page-link" href="./NoticeListAction.sh?page=1"> << </a>
								</li>
								
								<!-- 이전 블럭으로 이동 -->
								<c:if test="${startPage > 10 }">
									<li class="page-item">
										<a class="page-link" href="./NoticeListAction.sh?page=1"> < </a>
									</li>
								</c:if>
								
								<!-- 각 블럭에 10개의 페이지 출력 -->
								<c:forEach var="i" begin="${startPage }" end="${endPage }">
									<c:if test="${i == page }">
										<!-- 현재 페이지 -->
										<li class="page-item active">
											<a class="page-link">${i}</a>
										</li>
									</c:if>
									<c:if test="${i != page }">
										<!-- 현재 페이지가 아닌 경우 -->
										<li class="page-item">
											<a class="page-link" href="./NoticeListAction.sh?page=${i}">${i}</a>
										</li>
									</c:if>
								</c:forEach>
								
								<!-- 다음 블럭으로 이동 -->
								<c:if test="${endPage < pageCount }">
									<li class="page-item" aria-current="page">
										<a class="page-link" href="./NoticeListAction.sh?page=${startPage+10 }"> > </a>
									</li>
								</c:if>
							
								<!-- 마지막 페이지로 이동 -->
								<li class="page-item">
									<a class="page-link" href="./NoticeListAction.sh?page=${pageCount }"> >> </a>
								</li>
								
								<!-- <li class="page-item">
									<a class="page-link" href="#" tabindex="-1" aria-disabled="true"> < </a>
								</li> -->
							</ul>
						</div>
					
					</c:if>

					<%-- <c:if test="${listcount > 0 }">

						<!-- 1 페이지로 이동 -->
						<a href="./NoticeListAction.sh?page=1"
							style="text-decoration: none"> << </a>

						<!-- 이전 블럭으로 이동 -->
						<c:if test="${startPage > 10 }">
							<a href="./NoticeListAction.sh?page=${startPage-10}">[이전]</a>
						</c:if>

						<!-- 각 블럭에 10개의 페이지 출력 -->
						<c:forEach var="i" begin="${startPage }" end="${endPage }">
							<c:if test="${i == page }">
								<!-- 현재 페이지 -->
								[${i}]
							</c:if>
							<c:if test="${i != page }">
								<!-- 현재 페이지가 아닌 경우 -->
								<a href="./NoticeListAction.sh?page=${i}">[${i}]</a>
							</c:if>
						</c:forEach>

						<!-- 다음 블럭으로 이동 -->
						<c:if test="${endPage < pageCount }">
							<a href="./NoticeListAction.sh?page=${startPage+10 }">[다음]</a>
						</c:if>

						<!-- 마지막 페이지로 이동 -->
						<a href="./NoticeListAction.sh?page=${pageCount }"
							style="text-decoration: none"> >> </a>
					</c:if> --%>
					
				</div>
			</div>

		</article>
	</div>
</section>

<!-- footer 파일 불러오기 -->
<%@ include file="/footer.jsp"%>