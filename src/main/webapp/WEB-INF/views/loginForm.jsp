<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>�α��� ������</title>

    <style type="text/css">
    
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
        }

        .container {
            display: flex;
            justify-content: center; /* ���� �߾� ���� */
            align-items: center; /* ���� �߾� ���� */
            height: 100vh; /* ȭ�� ��ü ���� */
            position: relative; /* �ڽ� ����� ��ġ ���� */
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
            border-radius: 20px; /* �𼭸��� �ձ۰� ����� */
            overflow: hidden; /* �ձ۰� ó���� �κ��� �߸����� ���� */
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
  flex-direction: column; /* �Է� �ʵ���� ���� ���� */
  justify-content: center; /* ���� ����(����) ��� ���� */
  align-items: center; /* ���� ����(����) ��� ���� */
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
            align-items: center; /* ���� ������ ���� �߰� */
            width: 100%;
            height: 100%; /* ���̸� 100%�� �����Ͽ� �����̳ʿ� ���� */
            position: absolute; /* �α��� �����̳��� �Ʒ��� ��ġ�ϵ��� ���� */
            top: 0; /* ��� ���� */
            left: 0; /* ���� ���� */
            overflow: hidden; /* �̹����� �����̳� ������ �Ѿ�� �ʵ��� ���� */
        }
		
		.background_image_img {
            width: 100%; /* ���� ���⿡�� 100%�� ���� */
            height: auto; /* �ڵ����� ���� �����Ͽ� ���� ���� */
            min-height: 100%; /* �ּ� ���̸� 100%�� �����Ͽ� �׻� �����̳ʸ� ä�� */
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
                    alert("����� ������ �������ּ���.");
                }
            });
        });
    </script>
</head>
<body>
    <div class="container">
        <!-- �̹��� -->
        
    	<div class="background_image">
			<img src="/images/�α��ι��.jpg" alt="��� �̹���" class="background_image_img">
    	</div>
    
        <!-- �α��� �� -->
        <div class="login_container">
        	<div class="image_container">
	            <img src="/images/�α��ο�����.jpg" alt="�α��� ������">
	        </div>
	        <div class="login_box">
	        	<div class="login_icon">
	           		<img src="/images/�λ�Hive�ΰ�.png" alt="�α��� ������">
	        	</div>
	                      

	            <div class="user_type_buttons">
	                <button class="user_button" id="student" data-type="s">�л�</button>
	                <button class="user_button" id="professor" data-type="p">����</button>
	                <button class="user_button" id="staff" data-type="a">����</button>
	            </div>
	
	            <form action="/login" method="post" id="loginForm">
	                <input type="hidden" name="userType" id="userType" value="">
	                <input type="text" name="username" placeholder="���̵� �Է��ϼ���." required="required">
	                <input type="password" name="password" placeholder="��й�ȣ�� �Է��ϼ���." required="required">
	                <input type="submit" value="�α���" class="input_submit">
	            </form>
	
	            <ul class="sign_up_find_idpw">
	                <li><a href="/construction">ȸ������</a></li>
	                <li><span>&nbsp;|&nbsp;</span></li>
	                <li><a href="/construction">���̵� ã��</a></li>
	                <li><span>&nbsp;|&nbsp;</span></li>
	                <li><a href="/construction">��й�ȣ ã��</a></li>
	            </ul>
	        </div>
        </div>
    </div>
</body>
</html>
