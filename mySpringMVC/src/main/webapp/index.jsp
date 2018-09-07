<%--
  Created by IntelliJ IDEA.
  User: wfs
  Date: 2018/8/22
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {
                $.ajax({
                    url:"user/requestMsg",
                    contentType:"application/json;charset=utf-8",
                    data:'{"username":"aa","password":100}',
                    dataType:"json",
                    type:"post",
                    success:function (data) {
                        alert(data.username)
                    }
                })
            })
        })

    </script>
</head>
<h3>主页</h3>
<br>
<a href="user/skip?username='孙胜'&password=123456">跳转并传输数据</a>
<button id="btn">发送异步</button>
<br>
<br>
<br>
    <form action="user/upLoad" method="post" enctype="multipart/form-data">
                <input type="file" name="upload" >
                <input  type="submit" value="上传">
    </form>

</body>
</html>
