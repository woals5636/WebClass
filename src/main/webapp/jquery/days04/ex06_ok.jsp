<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>

<%
    // jsp 스크립트 요소 : 스크립트릿, 표현식
    String subject = request.getParameter("subject");
%>
> 전송된 과목 : <%= subject %><br>
<br>
<!-- input[type=radio name=subject value]*4>label -->
<input type="radio" name="subject" value="kor"><label for="">국어</label></input>
<input type="radio" name="subject"  value="eng"><label for="">영어</label></input>
<input type="radio" name="subject"  value="mat"><label for="">수학</label></input>
<input type="radio" name="subject"  value="pe"><label for="">체육</label></input>
<br>
<a href="javascript:history.back()">뒤로 가기</a>
<br>
<!-- BOM -->
<a href="javascript:location.href='ex06.html'">뒤로 가기</a>
<br>

<br>
<select name="selSubject" id="selSubject">
    <option value="">선택하세요.</option>
    <option value="kor">국어</option>
    <option value="eng">영어</option>
    <option value="mat">수학</option>
    <option value="pe">체육</option>
</select>
    
    <script>
        let s = "<%= subject %>";
        $(`:radio[name=subject][value=\${s}]`).prop("checked",true);
        $("#selSubject").find(`[value=\${s}]`).prop("selected",true);
        // $("#selSubject").val("<%= subject %>");
    </script>

</body>
</html>