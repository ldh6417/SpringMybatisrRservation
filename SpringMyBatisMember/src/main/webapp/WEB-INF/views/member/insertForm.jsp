<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Register</title>

<style>
:root {
	--sky-main: #4facfe;
	--sky-light: #d9f1ff;
	--sky-dark: #2b8de0;
	--box-bg: #ffffff;
}

body {
	background: linear-gradient(135deg, #cbe9ff, #e9f6ff);
	font-family: 'Pretendard', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	margin: 0;
}

.register-container {
	width: 100%;
	max-width: 600px;
	background: var(--box-bg);
	padding: 40px;
	border-radius: 15px;
	box-shadow: 0 10px 30px rgba(79, 172, 254, 0.3);
}

.header {
	text-align: center;
	margin-bottom: 35px;
}

.header h1 {
	font-size: 2rem;
	color: var(--sky-dark);
	font-weight: 800;
}

.header span {
	color: var(--sky-main);
}

/* Form */
.form-group {
	margin-bottom: 25px;
}

.form-group label {
	display: block;
	font-weight: bold;
	color: var(--sky-dark);
	margin-bottom: 8px;
	font-size: 0.9rem;
}

input[type="text"] {
	width: 100%;
	padding: 12px 14px;
	border: 1px solid #b7dcff;
	border-radius: 6px;
	font-size: 1rem;
	transition: 0.3s;
	box-sizing: border-box;
}

input[type="text"]:focus {
	border-color: var(--sky-main);
	outline: none;
	box-shadow: 0 0 10px rgba(79, 172, 254, 0.4);
}

/* Buttons */
.btn-area {
	display: flex;
	gap: 12px;
	margin-top: 30px;
}

.btn {
	flex: 1;
	padding: 14px;
	font-size: 1rem;
	border-radius: 6px;
	border: none;
	cursor: pointer;
	font-weight: bold;
	transition: 0.3s;
}

.btn-submit {
	background: var(--sky-main);
	color: white;
}

.btn-submit:hover {
	background: var(--sky-dark);
	transform: translateY(-2px);
}

.btn-reset {
	background: #e0e0e0;
}

.btn-reset:hover {
	background: #cfcfcf;
}

.btn-list {
	flex: 1;
	text-align: center;
	padding: 14px;
	background: #2b8de0;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	font-weight: bold;
	transition: 0.3s;
}

.btn-list:hover {
	background: #1f6fb7;
}

/* Footer */
.bottom-deco {
	margin-top: 25px;
	text-align: center;
	font-size: 12px;
	color: #777;
	font-family: monospace;
}
</style>
</head>

<body>

	<div class="register-container">

		<div class="header">
			<h1>
				회원가입 <span>테스트</span>
			</h1>
		</div>

		<form action="/member/insert" method="post">

			<div class="form-group">
				<label>ID</label> <input type="text" name="id" placeholder="아이디 입력"
					required>
			</div>

			<div class="form-group">
				<label>NAME</label> <input type="text" name="name"
					placeholder="이름 입력" required>
			</div>

			<div class="form-group">
				<label>PHONE</label> <input type="text" name="phone"
					placeholder="전화번호 입력" required>
			</div>

			<div class="btn-area">
				<a href="/member/memberList" class="btn-list">회원 목록</a>
				<button type="submit" class="btn btn-submit">회원가입</button>
				<button class="btn btn-retry"
				onclick="location.href='/member/loginForm'">로그인</button>