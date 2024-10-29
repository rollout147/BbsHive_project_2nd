<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>
	<link>

	<head>
		<meta charset="UTF-8">
		<title>개인회원 약관 동의</title>
		<style>
			/* 폼 그룹 스타일 */
			.form-group {
				/* 블록 요소로 설정하여 세로 정렬 */
				display: block;
			}

			/* 텍스트 상자 스타일 */
			.text {
				/* 자동으로 너비 설정 */
				width: auto;
				/* 텍스트 박스의 높이 */
				height: 200px;
				/* 텍스트 박스 하단 여백 */
				margin-bottom: 10px;
				/* 폰트 설정 */
				font-family: Pretendard;
				/* 테두리 설정 */
				border: solid 1px #ddd;
				/* 텍스트 정렬 */
				text-align: left;
				/* 세로 스크롤 생성 */
				overflow-y: scroll;
				/* 공백을 줄바꿈으로 표시 */
				white-space: pre-line;
				/* 폰트 크기 설정 */
				font-size: 15px;
				/* 텍스트 박스 내부 여백 설정 */
				padding: 10px 8px;
				color: gray;
			}

			/* 체크박스 스타일 */
			input[type="checkbox"] {
				/* 체크박스 오른쪽 여백 */
				margin-right: 10px;
				/* 체크박스 강조 색상 */
				accent-color: #ff4714;
				/* 체크박스 너비와 높이 */
				width: 20px;
				height: 20px;
			}

			/* 강조 텍스트 스타일 */
			strong {
				/* 텍스트 색상 빨간색으로 변경 */
				color: red;
			}

			/* 필수 동의 항목 제목 스타일 */
			.agree {
				/* 글자 두께 굵게 */
				font-weight: bold;
				/* 폰트 크기 설정 */
				font-size: 20px;
			}

			/* 체크박스 항목 오른쪽에 텍스트 배치 */
			.check {
				/* 오른쪽으로 정렬 */
				float: right;
				/* 폰트 크기 설정 */
				font-size: 18px;
			}

			/* 체크박스 버튼 위치 설정 */
			.checkBtn {
				/* 상대적인 위치 지정 */
				position: relative;
				/* 약간 위로 이동 */
				top: 3px;
			}

			footer {
				top: 1000px;
			}
		</style>
		<script>
			function toggleButton() {
				// 체크박스가 체크되었는지 확인
				const checkBox1 = document.getElementById('agree1');
				const checkBox2 = document.getElementById('agree2');
				const submitBtn = document.getElementById('submitBtn');

				// 체크박스 체크 여부에 따라 버튼 활성/비활성화
				if (checkBox1.checked && checkBox2.checked) {
					submitBtn.disabled = false; // 활성화
				} else {
					submitBtn.disabled = true; // 비활성화
				}
			}

			// 페이지 로드 시 버튼 비활성화 상태로 시작
			window.onload = function () {
				document.getElementById('submitBtn').disabled = true;
			};


		</script>
	</head>

	<body>
		
		<div class="contents">
			<div class="content">
				<h1>회원가입</h1>
			</div>
			<div class="content">
				<ul class="join_step">
					<li><img src="<%=request.getContextPath()%>/images/main/joinAgree.png"><span>약관동의</span></li>
					<li><img src="<%=request.getContextPath()%>/images/main/joinInfo_before.png"><span>회원
							정보 입력</span></li>
					<li><img src="<%=request.getContextPath()%>/images/main/joinOk_before.png"><span>가입신청</span>
					</li>
				</ul>
			</div>
			<div class="content">
				<div class="container">
					<div class="form-group">
						<label class="agree"><Strong>[필수]</Strong> 이용약관에 동의</label>
						<p></p>
						<div class="text">
						제 1 장 총 칙
						제 1 조 (목 적)
						이 약관은 안양시 HiVE 센터 고등직업교육거점지구(이하 '안양시 HiVE 센터 고등직업교육거점지구')이 제공하는 교육강좌서비스(이하 '서비스')의 이용조건 및 절차에 관한 사항을 규정함을 목적으로 합니다.
						
						제 2 조 (용어 정의)
						1. 이 약관에서 사용하는 용어는 다음과 같습니다.
						가. '회원'이라 함은 서비스를 제공받기 위해 안양시 HiVE 센터 고등직업교육거점지구가 인정하는 절차를 통해 가입하여 이용자번호 (ID)를 부여 받은 자를 말합니다.
						나. '이용자번호(ID)'라 함은 가입회원의 식별과 회원의 서비스 이용을 위해 고객이 선정하고 안양시 HiVE 센터 고등직업교육거점지구가 부여하는 문자와 숫자의 조합을 말합니다.
						다. '비밀번호'라 함은 회원이 부여받은 이용자번호(ID)와 일치된 회원임을 확인하고 회원의 권익보호를 위하여 회원이 선정한 문자와 숫자의 조합을 말합니다.
						2. 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스 이용안내에서 정하는 바에 따릅니다.
						제 3 조 (약관 외 적용범위)
						1. 이 약관은 안양시 HiVE 센터 고등직업교육거점지구가 제공하는 서비스 이용에 관한 안내(이하 '서비스 이용안내')와 함께 적용 합니다.
						2. 이 약관에 명시되지 않은 사항에 대해서는 관계법령 및 서비스 이용안내에 따릅니다.
						제 2 장 이용계약
						제 4 조 (서비스의 종류)
						서비스의 종류와 내용은 서비스 이용안내에서 정하는 바에 따릅니다.
						
							<p>

						</div>
						<div class="check">
							<input type="checkbox" class="checkBtn" id="agree1" required="required"
								onclick="toggleButton()"><span>동의합니다.</span>
							<p>
						</div>
					</div>
					<div class="form-group">
						<label class="agree"><Strong>[필수]</Strong> 개인정보 약관동의</label>
						<p></p>
						<div class="text">
						개인정보의 수집ㆍ이용에 관한 사항
						개인정보의 수집ㆍ이용 목적
						안양시 HiVE 센터 고등직업교육거점지구에서는 프로그램 운영에 있어 귀하의 개인정보를 아래와 같이 수집·이용을 하고자 합니다. 다음의 사항에 대해 충분히 읽어보신 후, 동의여부를 체크, 서명하여 주시기 바랍니다.
						
						개인정보 수집항목
						필수항목 : 성명, 생년월일, 성별, 아이디, 비밀번호, 주소, 휴대폰번호, 전화번호, 이메일, 최종학력, 가입경로
						선택사항 : 정보수신여부(이메일/SMS)
						</div>
						<p>
						<div class="check">
							<input type="checkbox" class="checkBtn" required="required" id="agree2"
								onclick="toggleButton()"><span>동의합니다.</span>
							<p>
						</div>
					</div>
					<div class="form-gruop">
						<div class="moveBtn">
							<a href="/"><button id="backBtn">취소</button></a>
							<a href="/view_jm/buyerJoinInfo"><button id="submitBtn">다음</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</body>

	</html>