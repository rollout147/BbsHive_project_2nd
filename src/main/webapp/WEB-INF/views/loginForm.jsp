<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인 페이지</title>

    <style type="text/css">
    
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
        }

        .container {
            display: flex;
            justify-content: center; /* 수평 중앙 정렬 */
            align-items: center; /* 수직 중앙 정렬 */
            height: 100vh; /* 화면 전체 높이 */
            position: relative; /* 자식 요소의 위치 조정 */
        }

        .image_container {
            width: 50%;
            height: auto;
        }

        .image_container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .login_container {
            padding: 0;
            width: 1050px;
            height: auto;
            display: flex;
            justify-content: space-between;
            position: absolute;
            background-color: #fdfdfd;
            border-radius: 20px; /* 모서리를 둥글게 만들기 */
            overflow: hidden; /* 둥글게 처리된 부분이 잘리도록 설정 */
         	box-shadow: 5px 5px 15px 5px rgba(0, 0, 0, 0.4);  
         	
        }
        
        .login_box {
            margin: 40px 80px;
            width: 50%;
        }

        .user_type_buttons {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
            width: 100%;
        }

        .user_button {
            background-color: #83CBEB;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            
            
        }

        .user_button.active {
            background-color: #134b84;
            color: white;
        }

        .user_button:hover {
            background-color: #134b84;
            color: white;
        }

#loginForm {
  display: flex;
  flex-direction: column; /* 입력 필드들을 수직 정렬 */
  justify-content: center; /* 수직 방향(세로) 가운데 정렬 */
  align-items: center; /* 수평 방향(가로) 가운데 정렬 */
}
        input {
            width: 50%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .input_submit {
            width: 55%;
            background-color: #83CBEB;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .input_submit:hover {
            background-color: #134b84;
            color: white;
        }

        ul.sign_up_find_idpw {
            display: flex;
            justify-content: center;
            width: calc(100% - 20px);
            margin-top: 20px;
            padding: 0;
            list-style: none;
        }

        ul.sign_up_find_idpw li a {
            text-decoration: none;
            color: gray;
            font-size: 14px;
        }

        ul.sign_up_find_idpw li span {
            color: gray;
        }

        ul.sign_up_find_idpw li a:hover {
            text-decoration: underline;
        }
        
        .background_image {
            display: flex;
            justify-content: center;
            align-items: center; /* 수직 정렬을 위해 추가 */
            width: 100%;
            height: 100%; /* 높이를 100%로 설정하여 컨테이너에 맞춤 */
            position: absolute; /* 로그인 컨테이너의 아래에 위치하도록 설정 */
            top: 0; /* 상단 맞춤 */
            left: 0; /* 좌측 맞춤 */
            overflow: hidden; /* 이미지가 컨테이너 밖으로 넘어가지 않도록 설정 */
        }
		
		.background_image_img {
            width: 100%; /* 가로 방향에서 100%로 설정 */
            height: auto; /* 자동으로 높이 조정하여 비율 유지 */
            min-height: 100%; /* 최소 높이를 100%로 설정하여 항상 컨테이너를 채움 */
            filter: brightness(60%) blur(2px);
            opacity: 0.9;  
        }
		
		.login_icon {
		    margin-bottom: 50px;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    margin-top: 10px;
		}
		
		.login_icon img {
		    width: 80px;
		    height: 80px;
		}

    </style>

    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", () => {
            const userButtons = document.querySelectorAll(".user_button");
            const userTypeInput = document.getElementById("userType");

            userButtons.forEach(button => {
                button.addEventListener("click", () => {
                    userButtons.forEach(btn => btn.classList.remove("active"));
                    button.classList.add("active");
                    userTypeInput.value = button.getAttribute("data-type");
                });
            });

            const loginForm = document.getElementById("loginForm");
            loginForm.addEventListener("submit", (event) => {
                if (!userTypeInput.value) {
                    event.preventDefault();
                    alert("사용자 유형을 선택해주세요.");
                }
            });
        });
    </script>
</head>
<body>
    <div class="container">
        <!-- 이미지 -->
        
    	<div class="background_image">
			<img src="/images/로그인배경.jpg" alt="배경 이미지" class="background_image_img">
    	</div>
    
        <!-- 로그인 폼 -->
        <div class="login_container">
        	<div class="image_container">
	            <img src="/images/로그인옆사진.jpg" alt="로그인 옆사진">
	        </div>
	        <div class="login_box">
	        	<div class="login_icon">
	           		<img src="/images/부산Hive로고.png" alt="로그인 아이콘">
	        	</div>
	                      

	            <div class="user_type_buttons">
	                <button class="user_button" id="student" data-type="s">학생</button>
	                <button class="user_button" id="professor" data-type="p">교수</button>
	                <button class="user_button" id="staff" data-type="a">직원</button>
	            </div>
	
	            <form action="/login" method="post" id="loginForm">
	                <input type="hidden" name="userType" id="userType" value="">
	                <input type="text" name="username" placeholder="아이디를 입력하세요." required="required">
	                <input type="password" name="password" placeholder="비밀번호를 입력하세요." required="required">
	                <input type="submit" value="로그인" class="input_submit">
	            </form>
	
	            <ul class="sign_up_find_idpw">
	                <li><a href="/construction">회원가입</a></li>
	                <li><span>&nbsp;|&nbsp;</span></li>
	                <li><a href="/construction">아이디 찾기</a></li>
	                <li><span>&nbsp;|&nbsp;</span></li>
	                <li><a href="/construction">비밀번호 찾기</a></li>
	            </ul>
	        </div>
        </div>
    </div>
</body>
</html>
