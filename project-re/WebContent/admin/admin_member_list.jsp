<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- header 파일 불러오기 -->
<%@ include file="/header.jsp"%>

<section>
	<div id="contents" class="col-10 container-fluid">
		<article class="row h-75">
			<h3>회원 목록</h3>
			<p>총 회원수 : ${listcount - 2}</p>
			<table class="table table-info table-hover">
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>가입일</th>
					<th>상태</th>
					<th>등급</th>
				</tr>
				
				<c:set var="num" value="${listcount - (page-1) *20 }" />
				<c:forEach var="m" items="${memberlist }">
					<tr onclick="location.href='./AdminDetailAction.sw?id=${m.id}&page=${page}'" style="cursor:hand">
						<td>${num} <c:set var="num" value="${num-1 }" /></td>
						<td>${m.id}</td>
						<td>${m.name}</td>
						<td><fmt:formatDate value="${m.reg_date}" pattern="yyyy-MM-dd" /></td>
						<td>
							<c:choose>
								<c:when test="${m.state == '0'}">
									가입
								</c:when>
								<c:when test="${m.state == '1'}">
									탈퇴
								</c:when>
							</c:choose>
						</td>
						<td>${m.grade}</td>
					</tr>
				</c:forEach>
			</table>
			<div class="container">
				<!-- 페이징 영역 -->
				<div style="float: none; margin: 0 auto;">
					<c:if test="${listcount > 0 }">

						<!-- 1 페이지로 이동 -->
						<a href="./AdminListAction.sw?page=1"
							style="text-decoration: none"> 처음으로 </a>

						<!-- 이전 블럭으로 이동 -->
						<c:if test="${startPage > 20 }">
							<a href="./AdminListAction.sw?page=${startPage-20}">[이전]</a>
						</c:if>

						<!-- 각 블럭에 10개의 페이지 출력 -->
						<c:forEach var="i" begin="${startPage }" end="${endPage }">
							<c:if test="${i == page }">
								<!-- 현재 페이지 -->
								[${i}]
							</c:if>
							<c:if test="${i != page }">
								<!-- 현재 페이지가 아닌 경우 -->
								<a href="./AdminListAction.sw?page=${i}">[${i}]</a>
							</c:if>
						</c:forEach>

						<!-- 다음 블럭으로 이동 -->
						<c:if test="${endPage < pageCount }">
							<a href="./AdminListAction.sw?page=${startPage+20 }">[다음]</a>
						</c:if>

						<!-- 마지막 페이지로 이동 -->
						<a href="./AdminListAction.sw?page=${pageCount }"
							style="text-decoration: none"> 끝으로 </a>
					</c:if>
					
				</div>
			</div>
		</article>
	</div>
</section>

<!-- footer 파일 불러오기 -->
<%@ include file="/footer.jsp"%>