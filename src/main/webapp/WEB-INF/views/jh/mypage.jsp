<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="jh_jstl.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/css/jh_mypage.css">

</head>
<body>

<header class="header">
    <h1>���</h1>
</header>

<div class="body">
    <div class="title">����������</div> <!-- ���� �߰� -->

    <div class="main-container"> <!-- ����Ʈ�� �������� ���δ� �����̳� -->
        <div class="list">
            <div class="active">����������</div>
            <div>ȸ����������</div>
            <div>��й�ȣ ����</div>
            <div>������û��Ȳ</div>
            <div>���� ���ǽ�</div>
            <div>���� ����� ��</div>
            <div>ȸ��Ż��</div>
        </div>

        <div class="content">
        	<form action="/pw_chk" method="get">
	            <div class="content-box" onclick="this.closest('form').submit();">
	        		<img src="/images/ȸ����������.png" alt="ȸ����������" class="content-image">
	        		<p>ȸ����������</p>
	    		</div>
    		</form>
    		
    		<form action="/your-controller-url" method="POST">
	            <div class="content-box" onclick="this.closest('form').submit();">
        			<img src="/images/��й�ȣ����.png" alt="��й�ȣ����" class="content-image">
        			<p>��й�ȣ ����</p>
    			</div>
    		</form>
    		
    		<form action="/your-controller-url" method="POST">
	            <div class="content-box" onclick="this.closest('form').submit();">
        			<img src="/images/������û��Ȳ.png" alt="������û��Ȳ" class="content-image">
        			<p>������û��Ȳ</p>
    			</div>   
    		</form>
    		
    		<form action="/your-controller-url" method="POST">
	            <div class="content-box" onclick="this.closest('form').submit();">
        			<img src="/images/���� ���ǽ�.png" alt="���� ���ǽ�" class="content-image">
        			<p>���� ���ǽ�</p>
    			</div> 
    		</form>	
    		
    		<form action="/your-controller-url" method="POST">
	            <div class="content-box" onclick="this.closest('form').submit();">
        			<img src="/images/���� ����� ��.png" alt="���� ����� ��" class="content-image">
        			<p>���� ����� ��</p>
    			</div> 	
    		</form>	
        </div>
    </div>
</div>

<footer class="footer">
        &copy; 2024 MyPage Corp. All rights reserved.
</footer>




	
</body>
</html>