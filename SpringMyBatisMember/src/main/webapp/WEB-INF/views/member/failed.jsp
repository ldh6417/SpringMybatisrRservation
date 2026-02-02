<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Failed</title>

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
	color: #e04b4b;
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

.btn-retry {
	background: #4facfe;
	color: white;
}

.btn-retry:hover {
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
		<h1>❌ 등록 실패</h1>
		<p>
			회원 등록 중 오류가 발생했습니다.<br>다시 시도해주세요.
		</p>

		<div class="btn-area">
			<button class="btn btn-retry"
				onclick="location.href='/member/loginForm'">다시 시도</button>
			<button class="btn btn-home"
				onclick="location.href='/member/memberList'">회원 목록</button>
		</div>
	</div>

</body>
</html>
