<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        

<style type="text/css">
body{
	margin: 0px;
	padding: 0px;
}

header{
	padding: 0px;
	width: 1700px;
	height: 106px;
	margin: auto;
	background-color: #999999;
}

.container {
    display: grid;
    grid-template-columns: 410px 1fr; 		/* 왼쪽 메뉴 410px, 나머지 공간은 주 콘텐츠 */
    gap: 30px; 								/* 좌우 여백(15px + 15px) -> 메뉴와 콘텐츠 간격 */
    max-width: 1700px; 						/* 콘텐츠 영역 전체 크기 410px + 30px + 1260px */
    margin: 0 auto; 						/* 중앙 정렬 */
    padding: 0px; 						/* 좌우 패딩 15px */
}

.left-menu {
    background-color: #f0f0f0;
    padding: 0px 15px;
}

.main-content {
    background-color: #e0e0e0;
    padding: 0px 15px;
}


</style>

<script type="text/javascript">

$(function() {
	$("#tui-tree-node-4").click(function() {
		alert("ok?");
		});
});

</script>

</head>
<body>
	<header>
		<img	src="<%=request.getContextPath()%>/images/kh/Logo_.png" />
	</header>
	
	<div class="container">
        <div class="left-menu">
        	<%@ include file="tree.jsp"%>
        </div>
        <div class="main-content">
        	<h1>MAIN</h1>
			<table>
				<c:forEach	var="paperList"	items="${paperList}"	varStatus="status" >
							<tr>
								<td class="cell">${paperList.aply_num}</td>						
								<td class="cell">${paperList.lctr_num}</td>
								<td class="cell">${paperList.unq_num}</td>						
								<td class="cell">${paperList.prdoc_type}</td>
								<td class="cell">${paperList.aply_ymd}</td>						
								<td class="cell">${paperList.issu_ymd}</td>
								<td class="cell">${paperList.issu_stts}</td>	
							</tr>
				</c:forEach>
			</table>
			<select>
				<option>1</option>
			</select>
        
        </div>
    </div>
	
	
</body>
</html>