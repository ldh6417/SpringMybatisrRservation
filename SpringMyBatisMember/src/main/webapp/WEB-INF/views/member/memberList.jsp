<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>

<style>
body {
	background: linear-gradient(135deg, #cbe9ff, #e9f6ff);
	font-family: Pretendard, sans-serif;
	margin: 0;
	padding: 40px;
}

.container {
	max-width: 900px;
	margin: auto;
	background: white;
	padding: 40px;
	border-radius: 15px;
	box-shadow: 0 10px 30px rgba(79, 172, 254, 0.3);
	position: relative;
}

h1 {
	text-align: center;
	color: #2b8de0;
	margin-bottom: 30px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 14px;
	text-align: center;
	border-bottom: 1px solid #d0e7ff;
}

th {
	background: #4facfe;
	color: white;
}

tr:hover {
	background: #eef7ff;
	cursor: pointer;
}

/* 오른쪽 상단 버튼 */
.top-btn {
	position: absolute;
	top: 30px;
	right: 30px;
}

.btn {
	padding: 12px 20px;
	background: #4facfe;
	color: white;
	border-radius: 6px;
	text-decoration: none;
	font-weight: bold;
	transition: 0.3s;
}

.btn:hover {
	background: #2b8de0;
}
</style>
</head>

<body>

	<div class="container">

		<!-- 회원가입 버튼 -->
		<div class="top-btn">
			<a href="/member/insertForm" class="btn">회원 가입</a>
		</div>

		<h1>회원 리스트</h1>

		<table>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>가입일</th>
			</tr>

			<c:forEach var="member" items="${memberList}">
				<tr onclick="location.href='/member/detail?no=${member.no}'">
					<td>${member.no}</td>
					<td>${member.id}</td>
					<td>${member.name}</td>
					<td>${member.phone}</td>

					<!-- ⭐ 날짜 포맷 -->
					<td><fmt:formatDate value="${member.regdate}"
							pattern="yyyy년 MM월 dd일" /></td>
				</tr>
			</c:forEach>

		</table>

	</div>

</body>
</html>
