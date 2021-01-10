<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="./css/images/icon.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="./css/images/icon.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="./css/images/icon.png">
    <meta name="msapplication-TileColor" content="#3372DF">

    <link rel="shortcut icon" href="./css/images/icon.png">
    <title>学生卡管理系统登录</title>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel='stylesheet' href='css/loginStyle2.css'>
    <link rel="stylesheet" href="css/loginStyle1.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="materialContainer">


    <div class="box">

        <div class="title">登录</div>
        <form action="login" method="post">
            <div class="input">
                <label for="name">用户名</label>
                <input type="text" name="name" id="name">
                <span class="spin"></span>
            </div>

            <div class="input">
                <label for="pass">密码</label>
                <input type="password" name="pass" id="pass">
                <span class="spin"></span>
            </div>

            <div class="button login">
                <button type="submit"><span>GO</span> <i class="fa fa-check"></i></button>
            </div>
        </form>
    </div>

</div>
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="./js/script.js"></script>

</body>
</html>
