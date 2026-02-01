<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Success</title>

<style>
body {
	background: linear-gradient(135deg, #cbe9ff, #e9f6ff);
	font-family: 'Pretendard', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.result-box {
	background: white;
	padding: 50px;
	border-radius: 15px;
	text-align: center;
	box-shadow: 0 10px 30px rgba(79, 172, 254, 0.3);
	max-width: 500px;
	width: 90%;
}

.result-box h1 {
	color: #2b8de0;
	font-size: 2rem;
	margin-bottom: 15px;
}

.result-box p {
	font-size: 1.1rem;
	color: #444;
	margin-bottom: 35px;
}

.btn-area {
	display: flex;
	gap: 15px;
}

.btn {
	flex: 1;
	padding: 14px;
	border: none;
	border-radius: 6px;
	font-size: 1rem;
	font-weight: bold;
	cursor: pointer;
	transition: 0.3s;
}

.btn-list {
	background: #4facfe;
	color: white;
}

.btn-list:hover {
	background: #2b8de0;
}

.btn-home {
	background: #e0e0e0;
}

.btn-home:hover {
	background: #cfcfcf;
}
</style>
</head>

<body>

	<div class="result-box">
		<h1>🎉 등록 성공!</h1>
		<p>회원 정보가 정상적으로 저장되었습니다.</p>

		<div class="btn-area">
			<button class="btn btn-list"
				onclick="location.href='/member/loginForm'">로그인</button>
			<button class="btn btn-home"
				onclick="location.href='/member/detail'">회원 정보</button>
			<button class="btn btn-list"
				onclick="location.href='/member/memberList'">회원 리스트</button>
		</div>
	</div>

</body>
</html>
