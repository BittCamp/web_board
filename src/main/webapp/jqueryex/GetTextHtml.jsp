<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>jQuery Text</title>
    <script src="../jquery/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // text() 메소드와 html() 메소드의 리턴 값을 출력합니다.
            alert($('p').text());//텍스트 모두
            alert($('p').html());//처음 찾은 거 갖고오기
        });
    </script>
</head>
<body>
    <p>TestA</p>
    <p>TestB</p>
    <p>TestC</p>
</body>
</html>