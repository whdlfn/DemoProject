<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<title>커피24 북카페</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Cache-Control"
		content="no-cache, no-store, must-revalidate">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="0">
	<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="../css/layout.css" />
	<link rel="stylesheet" href="../css/read.css?v=3">
	<script src="https://kit.fontawesome.com/352c53403e.js"
		crossorigin="anonymous"></script>
<!-- 	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
</head>
<body class="is-preload">
	<div id="page-wrapper">
		<%@include file="../layout/header.jsp"%>
		<section id="read">
			<h3>북챗 :: 커뮤니티</h3>
			<p>오늘 무슨 책을 읽으셨나요?</p>
			<form name="frm1" method="post" action="update">
				<input type="hidden" name="idx" value="${vo.idx }"> <input
					type="hidden" name="page" value="${page}">
				<!-- 현재페이지 번호 전달 - 순서5) post 로 전달해야 하므로 hidden type으로 저장 -->
				<table>
					<tr>
						<th width="100px;">제목</th>
						<td><c:choose>
								<c:when test="${fn:contains(vo.title,'[수정]') }">
									<input type="text" name="title" size="50" value="${vo.title }"
										readonly>
								</c:when>
								<c:otherwise>
									<input type="text" name="title" size="50"
										value="[수정]${vo.title }" readonly>
								</c:otherwise>
							</c:choose> <!-- readonly : 입력불가 --></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="writer" size="50"
							value="${vo.writer }" disabled="disabled"></td>
						<!-- disabled : 입력 불가 + 파리미터 전송 못함. -->
					</tr>
					<tr>
						<th>작성 날짜</th>
						<td><input type="text" value="${vo.createdAt }" disabled >
						</td>
					</tr>

					<tr>
						<th>내용</th>
						<!-- textarea 의 크기 : rows="20" cols="80" -->
						<td><textarea rows="30" cols="80" name="content" required><c:out
									value="${vo.content }" /></textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<button type="submit">저장</button>
							<button type="reset">다시쓰기</button>
							<button type="button" onclick="location.href='list?page=${page}'">목록</button>
							<!-- 현재페이지 번호 전달 - 순서5) -->
						</td>
					</tr>
				</table>
			</form>
			<div data-num="5" id="datanum"></div>
			<script src="../js/nav.js"></script>
		</section>
	</div>
</body>
</html>