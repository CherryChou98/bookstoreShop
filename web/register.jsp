<%--
  Created by IntelliJ IDEA.
  User: FT丶Kuroko
  Date: 2018/11/24
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户注册</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="css/style.css" type="text/css" />

<style>
    body {
        margin-top: 20px;
        margin: 0 auto;
    }

    .carousel-inner .item img {
        width: 100%;
        height: 300px;
    }

    font {
        color: #3164af;
        font-size: 18px;
        font-weight: normal;
        padding: 0 10px;
    }

</style>
</head>
<body>


<div class="container" style="width: 100%; ">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8"
             style="background: #fff; padding: 40px 80px; margin: 30px; border: 7px solid #ccc;">
            <font>用户注册</font>USER REGISTER
            <form id = myform class="form-horizontal" action="insert.jsp" style="margin-top: 5px;">
                <div class="form-group">
                    <label  class="col-sm-2 control-label">用户id</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="id"
                               placeholder="请输入用户id">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control"  name="username"
                               placeholder="请输入用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control"  name="password"
                               placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">Phone</label>
                    <div class="col-sm-6">
                        <input type="phone" class="form-control" name="phone"
                               placeholder="phone">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">cellphone</label>
                    <div class="col-sm-6">
                        <input type="phone" class="form-control" name="cellphone"
                               placeholder="cellphone">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" name="email"
                               placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">地址</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="address"
                               placeholder="请输入地址信息">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" width="100" value="注册" name="submit">
                    </div>
                </div>
            </form>
        </div>

        <div class="col-md-2"></div>

    </div>
</div>


</body>
</html>





