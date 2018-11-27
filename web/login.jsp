<%--
  Created by IntelliJ IDEA.
  User: FT丶Kuroko
  Date: 2018/11/24
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="modal-title">
    <h1 class="text-center">登录</h1>
</div>
<div class="modal-body">
    <form class="form-group" action="dologin.jsp" method="post">
        <div class="form-group">
            <label>用户名</label>
            <input name="id" class="form-control" type="text" placeholder="请输入用户名">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input name="pwd" class="form-control" type="password" placeholder="请输入密码">
        </div>

        <div class="text-right">
            <button class="btn btn-primary" type="submit">登录</button>
            <button class="btn btn-danger" data-dismiss="modal">取消</button>
        </div>
    </form>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
