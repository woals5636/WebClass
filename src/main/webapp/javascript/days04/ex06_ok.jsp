<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<script>
    let s = "<%= subject %>";
    //<%-- JSP ${ EL 표현언어 } `${변수}` JSP 주석처리 --%>
    document.querySelector(`input[name=subject][value=\${s}]`).checked = true;
    
    /*
    let subject = "<%= subject %>";
    document.querySelector("input[name=subject][value=<%= subject %>]").checked = true;
    */

    /*
    const rdbs = document.querySelectorAll("[name=subject]");
    alert( rsbs.length );
    for (let i = 0; i < rdbs.length; i++) {
        if(rdbs[i].value == subject){
            rdbs[i].setAttribute("checked","checked");
            break;
        }
    }
    */
</script>
</body>
</html>