<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="jstl.jsp" %>
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
    <div class="title">���� ���ǽ�</div> <!-- ���� �߰� -->

    <div class="main-container"> <!-- ����Ʈ�� �������� ���δ� �����̳� -->
        <div class="list">
            <a href="/jh/myPage"><div>����������</div></a>
            <div>ȸ����������</div>
            <div>��й�ȣ ����</div>
            <div>������û��Ȳ</div>
            <div class="active">���� ���ǽ�</div>
            <div>���� ����� ��</div>
            <div>ȸ��Ż��</div>
        </div>

        <div class="content">
		   
		   
		   <!-- ���� ������ ���� -->
		    <div class="block_1">
		    <hr/>
		        <h2>���Ǹ��</h2>
		        <table class="border">
		        <colgroup>
			        <col style="width: 100px;"> <!-- ���ǹ�ȣ ���� �ʺ� -->
			        <col style="margin-left: 30px;"> <!-- �л�������ȣ ���� ���� ���� -->
			    </colgroup>
		            <thead>
		                <tr>
		                    <td>���ǹ�ȣ</td>
		                    <td>�л�������ȣ</td>
		                </tr>
		            </thead>
		            <tbody>
		                <c:forEach var="myClass" items="${myClass}">
		                    <tr>
		                    	<td>${myClass.lctr_num}</td>
		                    	<td>${myClass.unq_num}</td>
		               			<td><a style="cursor: pointer;" href="/se/lctrViewList?unq_num=${myClass.unq_num}&lctr_num=${myClass.lctr_num}">�׽�Ʈ��û</a></td>
						 	</tr>					
		                </c:forEach>
		            </tbody>
		        </table>
		    </div>
		    
        </div>
    </div>
</div>

<footer class="footer">
        &copy; 2024 MyPage Corp. All rights reserved.
</footer>




	
</body>
</html>