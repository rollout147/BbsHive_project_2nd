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

    <body>
        <div class="code-html">
            <div id="tree" class="tui-tree-wrap"></div>
        </div>
        <script src="/css/dist/tui-tree.js"></script>
        <script class="code-js">

        var util = {
            addEventListener: function(element, eventName, handler) {
                if (element.addEventListener) {
                    element.addEventListener(eventName, handler, false);
                } else {
                    element.attachEvent('on' + eventName, handler);
                }
            }
        };

        var data = [
            {text: 'rootA', children: [
                {text: 'sub-A1'},
                {text: 'sub-A2'},
                {text: 'sub-A3'},
                {text: 'sub-A4'},
                {text: 'sub-A5', state: 'closed', children: [
                    {text:'sub-A5A', children:[
                        {text:'sub-A5A1'}
                    ]},
                    {text:'sub_A5B'}
                ]},
                {text: 'sub-A6'},
                {text: 'sub-A7'},
                {text: 'sub-A8'},
                {text: 'sub-A9', state: 'closed', children: [
                    {text:'sub-A9A'},
                    {text:'sub-A9B'}
                ]},
                {text: 'sub-A10'},
                {text: 'sub-A11'},
                {text: 'sub-A12'}
            ]},
            {text: 'rootB', state:'closed', children: [
                {text:'sub-B1'},
                {text:'sub-B2'},
                {text:'sub-B3'}
            ]}
        ];

        var tree = new tui.Tree('#tree', {
            data: data,
            nodeDefaultState: 'opened'
        });

        </script>
    </body>
</html>