<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="jh_jstl.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/css/jh_mypage.css">
<link rel="stylesheet" type="text/css" href="/css/jh_pw_chk.css">

</head>
<body>

<header class="header">
    <h1>���</h1>
</header>

<div class="body">
    <div class="title">ȸ����������</div> <!-- ���� �߰� -->

    <div class="main-container"> <!-- ����Ʈ�� �������� ���δ� �����̳� -->
        <div class="list">
            <div>����������</div>
            <div class="active">ȸ����������</div>
            <div>��й�ȣ ����</div>
            <div>������û��Ȳ</div>
            <div>���� ���ǽ�</div>
            <div>���� ����� ��</div>
            <div>ȸ��Ż��</div>
        </div>
        
<div class="content">
    <h1>����Ȯ���� ���� ��й�ȣ�� �Է��� �ּ���.</h1>
    <div class="pw_chk">    
        <form action="/login" method="post" id="loginForm">
            <div class="input-group" id="input-group2">
                <label for="username">���̵�</label>
                <input type="text" name="username" id="username" value="ujh1115" readonly>
            </div>
            <div class="input-group">
                <label for="password">��й�ȣ</label>
                <input type="password" name="password" id="password" placeholder="��й�ȣ�� �Է��ϼ���." required="required">
            </div>
            <div class="button-container"> 
                <input type="submit" value="Ȯ��" class="input_submit">
                <input type="button" value="���" class="input_cancel" onclick="window.location.href='/your-cancel-url';">
            </div>
        </form>
    </div>
</div>






    </div>
    
</div>

<footer class="footer">
        &copy; 2024 MyPage Corp. All rights reserved.
</footer>




	
</body>
</html>