<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<title>Tree</title>
<link rel="stylesheet" type="text/css" href="/css/tui-example-style.css" />
<link rel="stylesheet" type="text/css" href="/css/docs.css" />
<link rel="stylesheet" type="text/css" href="/css/dist/tui-tree.css" />
</head>
<script type="text/javascript">
	$(function() {
		$("#tui-tree-node-4").click(function() {
			alert("ok?");
			});
	});
</script>
    <body>
        <div class="code-html">
            <div id="tree" class="tui-tree-wrap"></div>
        </div>
        <script src="/css/dist/tui-tree.js"></script>
        <script class="code-js">

        var data = [
            {text: '인원관리', children: [
                {text: '학생관리'},
                {text: '교수관리'},
                {text: '직원관리'}
            ]},
            {text: '학사관리', state:'closed', children: [
            	{text: '강의관리', state: 'closed', children: [
                    {text:'오프라인강의개설승인'},
                    {text:'온라인강의개설승인'},
                    {text:'강의실관리'},
                    {text:'성적입력'}
                ]},
                {text: '수료관리', state: 'closed', children: [
                    {text:'장학금'},
                    {text:'재증명'}
                ]}
            ]},
            {text: '게시판관리', state:'closed', children: [
            	{text:'공지사항게시판'},
                {text:'1:1문의게시판'},
                {text:'FAQ'}
            ]}
        ];

        var tree = new tui.Tree('#tree', {
            data: data,
            nodeDefaultState: 'opened'
        });

        </script>
    </body>
</html>