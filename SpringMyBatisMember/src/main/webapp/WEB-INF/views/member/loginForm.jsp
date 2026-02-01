<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Login</title>

<style>
body {
	background: linear-gradient(135deg, #cbe9ff, #e9f6ff);
	font-family: Pretendard, sans-serif;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	width: 100%;
	max-width: 400px;
	background: white;
	padding: 40px;
	border-radius: 15px;
	box-shadow: 0 10px 30px rgba(79, 172, 254, 0.3);
}

h1 {
	text-align: center;
	color: #2b8de0;
	margin-bottom: 35px;
}

.form-group {
	margin-bottom: 22px;
}

.form-group label {
	display: block;
	font-weight: bold;
	color: #2b8de0;
	margin-bottom: 8px;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 12px;
	border: 1px solid #b7dcff;
	border-radius: 6px;
	font-size: 1rem;
	box-sizing: border-box;
	transition: 0.3s;
}

input:focus {
	border-color: #4facfe;
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
	border-radius: 6px;
	border: none;
	font-weight: bold;
	cursor: pointer;
	transition: 0.3s;
}

.btn-login {
	background: #4facfe;
	color: white;
}

.btn-login:hover {
	background: #2b8de0;
}

.btn-join {
	background: #e0e0e0;
}

.btn-join:hover {
	background: #cfcfcf;
}
</style>
</head>

<body>

	<div class="container">

		<h1>로그인</h1>

		<form action="/member/login" method="post">

			<div class="form-group">
				<label>ID</label> <input type="text" name="id" placeholder="아이디 입력"
					required>
			</div>

			<div class="form-group">
				<label>PHONE</label> <input type="TEXT" name="phone"
					placeholder="휴대폰 번호 입력" required>
			</div>

			<div class="btn-area">
				<button type="submit" class="btn btn-login">로그인</button>
				<button type="button" class="btn btn-join"
					onclick="location.href='/member/insertForm'">회원가입</button>
			</div>

		</form>

	</div>

</body>
</html>
