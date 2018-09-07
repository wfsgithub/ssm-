<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: wfs
  Date: 2018/8/23
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
            <%
                for (int i = 0; i <8 ; i++) {
                    Random random = new Random();
                    int a = random.nextInt(33)+1;
                    request.setAttribute("random"+i,a);
                }
                session.setAttribute("random8",128);
            %>
            ${random1}&nbsp;${random2}&nbsp;${random3}&nbsp;${random4}&nbsp;
            ${random5}&nbsp;${random6}&nbsp;${random7}&nbsp;${random8}

</body>
</html>
