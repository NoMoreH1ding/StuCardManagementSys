<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/1/9
  Time: 6:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%-->
<!doctype html>
<!--
Material Design Lite
Copyright 2015 Google Inc. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License
-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>学生卡管理系统</title>

    <!-- Add to homescreen for Chrome on Android -->
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

    <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
    <!--
    <link rel="canonical" href="http://www.example.com/">
    -->

    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.purple-pink.min.css">
    <link rel="stylesheet" href="./css/ContentStyles.css">
    <script src="./js/gVerify.js"></script>
    <style type="text/css">
        body, html {
            width: 100%;
        }

        #picyzm {
            width: 100px;
            height: 40px;
            display: inline-block;
            margin: 0 30px;
        }

        #verifyCodeDemo {
            width: 100%;
            display: flex;
            margin-top: 20px;
            justify-content: center;
        }
    </style>
</head>
<body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary"
            style="background-image: url(./css/images/Header.jpg) ;background-position:bottom ">
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
            <h3>学生卡管理系统</h3>
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout__tab-bar mdl-js-ripple-effect" style="background-color: transparent;">
            <a href="#overview" class="mdl-layout__tab is-active">总览</a>
            <a href="#newuser" class="mdl-layout__tab">添加用户</a>
            <a href="#money" class="mdl-layout__tab">消费&充值</a>
            <a href="#lost" class="mdl-layout__tab">挂失处理</a>
        </div>
    </header>
    <main class="mdl-layout__content">
        <div class="mdl-layout__tab-panel is-active" id="overview">
            <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white"
                        style="background-image: url(./css/images/welcome.jpg);background-size: contain ;background-position: center; ">
                </header>
                <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                    <div class="mdl-card__supporting-text">
                        <h4>欢迎使用</h4>
                        这是一个简单的学生卡管理系统
                    </div>
                </div>
            </section>
            <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                <div class="mdl-card mdl-cell mdl-cell--12-col">
                    <div class="mdl-card__supporting-text mdl-grid mdl-grid--no-spacing">
                        <h4 class="mdl-cell mdl-cell--12-col">信息</h4>
                        <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                            <div class="section__circle-container__circle "
                                 style="background-image: url(./css/images/avatar.png);background-position: center ;background-size: contain ;">
                            </div>
                        </div>
                        <div class="section__text mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                            <h5>持有人</h5>
                            ${username}
                        </div>
                        <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                            <div class="section__circle-container__circle "
                                 style="background-image: url(./css/images/contact.jpg);background-position: center ;background-size: contain ;">
                            </div>
                        </div>
                        <div class="section__text mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                            <h5>卡号</h5>
                            2021${id}
                        </div>
                        <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                            <div class="section__circle-container__circle "
                                 style="background-image: url(./css/images/wallet.png);background-position: center ;background-size: contain ;">
                            </div>
                        </div>
                        <div class="section__text mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                            <h5>卡上余额</h5>
                            <a href="#">${balance}</a>.
                        </div>
                        <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                            <div class="section__circle-container__circle "
                                 style="background-image: url(./css/images/maps.png);background-position: center ;background-size: contain ;background-repeat: no-repeat ;">
                            </div>
                        </div>
                        <div class="section__text mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                            <h5>是否挂失</h5>
                            <a href="#">${islost}</a>.
                        </div>
                    </div>
                </div>
            </section>
            <br><br><br>
        </div>

        <div class="mdl-layout__tab-panel" id="newuser">
            <section class="section--center mdl-grid mdl-grid--no-spacing">
                <div class="mdl-cell mdl-cell--12-col">
                    <h4>添加用户</h4>
                    <p>
                        这里是进行添加用户的地方
                    </p>

                </div>
            </section>
            <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                    <form action="adduser" method="post">
                        <div class="mdl-card__supporting-text">
                            <h4>添加用户</h4>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="name" name="name">
                                <label class="mdl-textfield__label" for="name">姓名</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="pass" name="pass">
                                <label class="mdl-textfield__label" for="pass">密码</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="role" name="role">
                                <label class="mdl-textfield__label" for="role">角色</label>
                            </div>
                        </div>
                        <div class="mdl-card__actions">
                            <button type="submit"
                                    class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">添加！
                            </button>
                        </div>
                    </form>
                </div>
            </section>
            <br><br><br>
        </div>

        <div class="mdl-layout__tab-panel" id="money">
            <section class="section--center mdl-grid mdl-grid--no-spacing">
                <div class="mdl-cell mdl-cell--12-col">
                    <h4>更改余额</h4>
                    <p>
                        这里是进行充值&消费的地方
                    </p>

                </div>
            </section>
            <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                    <form action="adminchange" method="post">
                        <div class="mdl-card__supporting-text">
                            <h4>随意更改！</h4>
                            <h5>一切如你所愿！</h5>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?"
                                       id="saveid" name="saveid">
                                <label class="mdl-textfield__label" for="saveid">ID……</label>
                                <span class="mdl-textfield__error">输入正确的卡号！</span>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="save"
                                       name="save">
                                <label class="mdl-textfield__label" for="save">我要改成……</label>
                                <span class="mdl-textfield__error">能改成数字吗？</span>
                            </div>

                        </div>
                        <div class="mdl-card__actions">
                            <button type="submit"
                                    class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">给他改！
                            </button>
                        </div>
                    </form>
                </div>
            </section>
            <br><br><br>
        </div>

        <div class="mdl-layout__tab-panel" id="lost">
            <section class="section--center mdl-grid mdl-grid--no-spacing">
                <div class="mdl-cell mdl-cell--12-col">
                    <h4>挂失处理</h4>
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                        <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                            <div class="mdl-card__supporting-text">
                                <h5>不会吧不会吧不会吧</h5>
                                <h5>真的有人天天弄丢东西的？？？</h5>
                                <div id="verifyCodeDemo"
                                     class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input type="text" id="code_input" class="mdl-textfield__input">
                                    <label class="mdl-textfield__label" for="code_input">输入验证码...</label>
                                    <p id="picyzm"></p>
                                </div>
                                <form action="clearlost" method="post">
                                    <button class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"
                                            id="btn" type="submit">
                                        把他们挂失的都给我扬了！
                                    </button>
                                    <script type="text/javascript">
                                        //初始化验证码
                                        var verifyCode = new GVerify({
                                            id: "picyzm",
                                            type: "blend"
                                        });
                                        //点击按钮验证
                                        var code = document.getElementById("code_input");
                                        var btn = document.getElementById("btn");
                                        btn.onclick = function () {
                                            var res = verifyCode.validate(code.value);
                                            if (res) {
                                                alert("验证通过,侦测到在途的聚变打击");
                                            } else {
                                                alert("验证码错误");
                                            }
                                        }
                                    </script>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </section>
            <br><br><br>
        </div>


        <footer class="mdl-mega-footer">
            <div class="mdl-mega-footer--middle-section">
                <div class=>
                    <h5 style="font-family: '方正锐正黑_GBK DemiBold',serif">もし忘れているねら、思い出すまで何も言れないで。</h5>
                    <p>by NoMoreH1ding,<br>copyright reserved.</p>
                </div>
            </div>
            <div class="mdl-mega-footer--bottom-section">
                <div class="mdl-logo">
                    More Information
                </div>
                <ul class="mdl-mega-footer--link-list">
                    <li><a href="https://developers.google.com/web/starter-kit/">Web Starter Kit(helped a lot!!!)</a>
                    </li>
                </ul>
            </div>
        </footer>
    </main>
</div>
<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
</body>

