<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Update</title>

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

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
	color: #2b8de0;
	margin-bottom: 6px;
}

input {
	width: 100%;
	padding: 12px;
	border: 1px solid #b7dcff;
	border-radius: 6px;
	font-size: 1rem;
}

input:focus {
	outline: none;
	border-color: #4facfe;
	box-shadow: 0 0 10px rgba(79, 172, 254, 0.4);
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

.btn-save {
	background: #4facfe;
	color: white;
}

.btn-save:hover {
	background: #2b8de0;
}

.btn-cancel {
	background: #e0e0e0;
	color: #333;
}

.btn-cancel:hover {
	background: #cfcfcf;
}
</style>
</head>

<body>

	<div class="container">

		<h1>회원 정보 수정</h1>

		<form action="/member/update" method="post">

			<!-- NO 숨겨서 전송 -->
			<input type="hidden" name="no" value="${member.no}">

			<div class="form-group">
				<label>ID</label> <input type="text" name="id" value="${member.id}"
					readonly>
			</div>

			<div class="form-group">
				<label>NAME</label> <input type="text" name="name"
					value="${member.name}" required>
			</div>

			<div class="form-group">
				<label>PHONE</label> <input type="text" name="phone"
					value="${member.phone}" required>
			</div>

			<div class="btn-area">
				<button type="submit" class="btn btn-save">수정 완료</button>
				<a href="/member/detail?no=${member.no}" class="btn btn-cancel">취소</a>
			</div>

		</form>

	</div>

</body>
</html>
