<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Detail</title>

<style>
body {
	background: linear-gradient(135deg, #cbe9ff, #e9f6ff);
	font-family: Pretendard, sans-serif;
	margin: 0;
	padding: 40px;
}

.container {
	max-width: 600px;
	margin: auto;
	background: white;
	padding: 40px;
	border-radius: 15px;
	box-shadow: 0 10px 30px rgba(79, 172, 254, 0.3);
}

h1 {
	text-align: center;
	color: #2b8de0;
	margin-bottom: 30px;
}

.info-group {
	margin-bottom: 20px;
}

.info-group label {
	display: block;
	font-weight: bold;
	color: #2b8de0;
	margin-bottom: 6px;
}

.info-box {
	padding: 12px;
	background: #eef7ff;
	border-radius: 6px;
	font-size: 1rem;
	color: #333;
}

/* Buttons */
.btn-area {
	display: flex;
	gap: 12px;
	margin-top: 35px;
}

.btn {
	flex: 1;
	padding: 14px;
	border-radius: 6px;
	border: none;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
	cursor: pointer;
	transition: 0.3s;
}

.btn-edit {
	background: #4facfe;
	color: white;
}

.btn-edit:hover {
	background: #2b8de0;
}

.btn-delete {
	background: #ff6b6b;
	color: white;
}

.btn-delete:hover {
	background: #e04b4b;
}

.btn-list {
	background: #e0e0e0;
	color: #333;
}

.btn-list:hover {
	background: #cfcfcf;
}
</style>
</head>

<body>

	<div class="container">

		<h1>회원 상세 정보</h1>

		<div class="info-group">
			<label>번호</label>
			<div class="info-box">${member.no}</div>
		</div>

		<div class="info-group">
			<label>아이디</label>
			<div class="info-box">${member.id}</div>
		</div>

		<div class="info-group">
			<label>이름</label>
			<div class="info-box">${member.name}</div>
		</div>

		<div class="info-group">
			<label>전화번호</label>
			<div class="info-box">${member.phone}</div>
		</div>

		<div class="info-group">
			<label>가입일</label>
			<div class="info-box">
				<fmt:formatDate value="${member.regdate}" pattern="yyyy-MM-dd HH:mm" />
			</div>
		</div>

		<div class="btn-area">
			<a href="/member/updateForm?no=${member.no}" class="btn btn-edit">수정하기</a>
			<a href="/member/delete?no=${member.no}" class="btn btn-delete"
				onclick="return confirm('정말 삭제하시겠습니까?')">삭제하기</a> <a
				href="/member/memberList" class="btn btn-list">목록으로</a>
		</div>

	</div>

</body>
</html>
