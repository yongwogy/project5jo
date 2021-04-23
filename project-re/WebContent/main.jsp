<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- header 파일 불러오기 -->
<%@ include file="header.jsp"%>

<section>
	<div id="contents" class="col-10 container-fluid">
		<article class="row">
			<p>공지사항</p>
			<table class="table table-sm">
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>

				<c:forEach var="n" items="${noticelist }">
					<tr>
						<td><a
							href="./NoticeDetailAction.sh?num=${n.num}&page=${page}">${n.subject}</a></td>
						<td>${n.id}</td>
						<td><fmt:formatDate value="${n.reg_date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
					</tr>
				</c:forEach>
			</table>
		</article>
	</div>
</section>

<!-- footer 파일 불러오기 -->
<%@ include file="footer.jsp"%>