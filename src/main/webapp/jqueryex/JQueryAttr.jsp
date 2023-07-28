<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>속성변경</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    // img 태그에
    $('img').each(function (index, element) {
        // src 속성을 조작합니다.
        $(this).attr('src', 'http://placehold.it/' + (index + 1) * 100 + 'x100');
    });
});
</script>
</head>
<body>
    <img />
    <img />
    <img />
</body>
</html>