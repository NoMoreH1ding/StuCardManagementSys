<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/1/9
  Time: 6:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
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
            <a href="#money" class="mdl-layout__tab">消费&充值</a>
            <a href="#lost" class="mdl-layout__tab">挂失</a>
            <a href="#help" class="mdl-layout__tab">帮助</a>
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

        <div class="mdl-layout__tab-panel" id="money">
            <section class="section--center mdl-grid mdl-grid--no-spacing">
                <div class="mdl-cell mdl-cell--12-col">
                    <h4>充值&消费</h4>
                    <p>
                        这里是进行充值&消费的地方
                    </p>

                </div>
            </section>
            <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white"
                        style="background: url(./css/images/save.gif) no-repeat -12px ;background-size: 200% ">
                </header>
                <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                    <form action="usersave" method="post">
                        <div class="mdl-card__supporting-text">
                            <div>存入</div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?"
                                       name="usersave" id="usersave">
                                <label class="mdl-textfield__label" for="usersave">我要存……</label>
                                <span class="mdl-textfield__error">能存点数吗？</span>
                            </div>
                        </div>
                        <div class="mdl-card__actions">
                            <button type="submit"
                                    class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">我现在就要存！
                            </button>
                        </div>
                    </form>
                </div>
            </section>
            <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white"
                        style="background: url(./css/images/spend.jpg) no-repeat center;background-size: 225px 210px ">
                </header>
                <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                    <form action="userspend" method="post">
                        <div class="mdl-card__supporting-text">
                            <div>花费</div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?"
                                       id="userspend" name="userspend">
                                <label class="mdl-textfield__label" for="userspend">我要花……</label>
                                <span class="mdl-textfield__error">能花点数吗？</span>
                            </div>
                        </div>
                        <div class="mdl-card__actions">
                            <button type="submit"
                                    class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">我现在就要花！
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
                    <h4>挂失</h4>
                    <p>
                        等我找到了card就把你们都撒了
                    </p>
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
                        <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white"
                                style="background: url(./css/images/disable.png) no-repeat center;background-size: 180px 180px ">
                        </header>
                        <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                            <div class="mdl-card__supporting-text">
                                <h4>挂失</h4>
                                <div id="verifyCodeDemo"
                                     class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input type="text" id="code_input" class="mdl-textfield__input">
                                    <label class="mdl-textfield__label" for="code_input">输入验证码...</label>
                                    <p id="picyzm"></p>
                                </div>
                                <form action="userlost" method="post">
                                    <button type="submit"
                                            class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"
                                            id="btn">
                                        验证
                                    </button>
                                </form>
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
                                            alert("验证通过,已经将您的校园卡标记为挂失状态，等待管理员处理");
                                        } else {
                                            alert("验证码错误");
                                        }
                                    }
                                </script>
                            </div>
                        </div>
                    </section>
                </div>
            </section>
            <br><br><br>
        </div>

        <div class="mdl-layout__tab-panel" id="help">
            <section class="section--center mdl-grid mdl-grid--no-spacing">
                <div class="mdl-cell mdl-cell--12-col">
                    <h4>（没什么用的）帮助信息</h4>
                    <p>
                        好吧，既然你已经点开了这个，证明又有一个好奇宝宝上当了。
                        这里写满了废话，看了可能也不会对你的使用有什么帮助。
                        只是作为一个页面存在罢了。后文将填充大量的法国废话
                    </p>
                    <p>
                        Sit qui est voluptate proident minim cillum in aliquip cupidatat labore pariatur id tempor id.
                        Proident occaecat occaecat sint mollit tempor duis dolor cillum anim. Dolore sunt ea mollit
                        fugiat in aliqua consequat nostrud aliqua ut irure in dolore. Proident aliqua culpa sint sint
                        exercitation. Non proident occaecat reprehenderit veniam et proident dolor id culpa ea tempor do
                        dolor. Nulla adipisicing qui fugiat id dolor. Nostrud magna voluptate irure veniam veniam labore
                        ipsum deserunt adipisicing laboris amet eu irure. Sunt dolore nisi velit sit id. Nostrud
                        voluptate labore proident cupidatat enim amet Lorem officia magna excepteur occaecat eu qui.
                        Exercitation culpa deserunt non et tempor et non.
                    </p>
                    <p>
                        Do dolor eiusmod eu mollit dolore nostrud deserunt cillum irure esse sint irure fugiat
                        exercitation. Magna sit voluptate id in tempor elit veniam enim cupidatat ea labore elit. Aliqua
                        pariatur eu nulla labore magna dolore mollit occaecat sint commodo culpa. Eu non minim duis
                        pariatur Lorem quis exercitation. Sunt qui ex incididunt sit anim incididunt sit elit ad officia
                        id.
                    </p>
                    <ul class="toc">
                        <h4>目录</h4>
                        <a href="#lorem1">总览</a>
                        <a href="#lorem2">消费与充值</a>
                        <a href="#lorem3">挂失</a>
                    </ul>

                    <h5 id="lorem1">总览</h5>
                    <p>
                        总览主要分为俩模块，欢迎界面和信息界面！
                    </p>
                    <ul>
                        <li>欢迎界面欢迎了你！</li>
                        <li>信息界面展示了你校园卡的基本信息，这么高级的实时监视窗口是真的难搞</li>
                    </ul>
                    <p>
                        Sit qui est voluptate proident minim cillum in aliquip cupidatat labore pariatur id tempor id.
                        Proident occaecat occaecat sint mollit tempor duis dolor cillum anim. Dolore sunt ea mollit
                        fugiat in aliqua consequat nostrud aliqua ut irure in dolore. Proident aliqua culpa sint sint
                        exercitation. Non proident occaecat reprehenderit veniam et proident dolor id culpa ea tempor do
                        dolor. Nulla adipisicing qui fugiat id dolor. Nostrud magna voluptate irure veniam veniam labore
                        ipsum deserunt adipisicing laboris amet eu irure. Sunt dolore nisi velit sit id. Nostrud
                        voluptate labore proident cupidatat enim amet Lorem officia magna excepteur occaecat eu qui.
                        Exercitation culpa deserunt non et tempor et non.
                    </p>
                    <p>
                        Do dolor eiusmod eu mollit dolore nostrud deserunt cillum irure esse sint irure fugiat
                        exercitation. Magna sit voluptate id in tempor elit veniam enim cupidatat ea labore elit. Aliqua
                        pariatur eu nulla labore magna dolore mollit occaecat sint commodo culpa. Eu non minim duis
                        pariatur Lorem quis exercitation. Sunt qui ex incididunt sit anim incididunt sit elit ad officia
                        id.
                    </p>
                    <h5 id="lorem2">消费与充值</h5>
                    <p>
                        诶嘿，还没写呢。
                    </p>
                    <p>
                        Tempor voluptate ex consequat fugiat aliqua. Do sit et reprehenderit culpa deserunt culpa.
                        Excepteur quis minim mollit irure nulla excepteur enim quis in laborum. Aliqua elit voluptate ad
                        deserunt nulla reprehenderit adipisicing sint. Est in eiusmod exercitation esse commodo. Ea
                        reprehenderit exercitation veniam adipisicing minim nostrud. Veniam dolore ex ea occaecat non
                        enim minim id ut aliqua adipisicing ad. Occaecat excepteur aliqua tempor cupidatat aute dolore
                        deserunt ipsum qui incididunt aliqua occaecat sit quis. Culpa sint aliqua aliqua reprehenderit
                        veniam irure fugiat ea ad.
                    </p>
                    <p>
                        Eu minim fugiat laborum irure veniam Lorem aliqua enim. Aliqua veniam incididunt consequat irure
                        consequat tempor do nisi deserunt. Elit dolore ad quis consectetur sint laborum anim magna do
                        nostrud amet. Ea nulla sit consequat quis qui irure dolor. Sint deserunt excepteur consectetur
                        magna irure. Dolor tempor exercitation dolore pariatur incididunt ut laboris fugiat ipsum sunt
                        veniam aute sunt labore. Non dolore sit nostrud eu ad excepteur cillum eu ex Lorem duis.
                    </p>
                    <p>
                        Sit qui est voluptate proident minim cillum in aliquip cupidatat labore pariatur id tempor id.
                        Proident occaecat occaecat sint mollit tempor duis dolor cillum anim. Dolore sunt ea mollit
                        fugiat in aliqua consequat nostrud aliqua ut irure in dolore. Proident aliqua culpa sint sint
                        exercitation. Non proident occaecat reprehenderit veniam et proident dolor id culpa ea tempor do
                        dolor. Nulla adipisicing qui fugiat id dolor. Nostrud magna voluptate irure veniam veniam labore
                        ipsum deserunt adipisicing laboris amet eu irure. Sunt dolore nisi velit sit id. Nostrud
                        voluptate labore proident cupidatat enim amet Lorem officia magna excepteur occaecat eu qui.
                        Exercitation culpa deserunt non et tempor et non.
                    </p>
                    <p>
                        Do dolor eiusmod eu mollit dolore nostrud deserunt cillum irure esse sint irure fugiat
                        exercitation. Magna sit voluptate id in tempor elit veniam enim cupidatat ea labore elit. Aliqua
                        pariatur eu nulla labore magna dolore mollit occaecat sint commodo culpa. Eu non minim duis
                        pariatur Lorem quis exercitation. Sunt qui ex incididunt sit anim incididunt sit elit ad officia
                        id.
                    </p>
                    <h5 id="lorem3">挂失</h5>
                    <p>
                        诶嘿，还没写呢。
                    </p>
                    <p>
                        Sit qui est voluptate proident minim cillum in aliquip cupidatat labore pariatur id tempor id.
                        Proident occaecat occaecat sint mollit tempor duis dolor cillum anim. Dolore sunt ea mollit
                        fugiat in aliqua consequat nostrud aliqua ut irure in dolore. Proident aliqua culpa sint sint
                        exercitation. Non proident occaecat reprehenderit veniam et proident dolor id culpa ea tempor do
                        dolor. Nulla adipisicing qui fugiat id dolor. Nostrud magna voluptate irure veniam veniam labore
                        ipsum deserunt adipisicing laboris amet eu irure. Sunt dolore nisi velit sit id. Nostrud
                        voluptate labore proident cupidatat enim amet Lorem officia magna excepteur occaecat eu qui.
                        Exercitation culpa deserunt non et tempor et non.
                    </p>
                    <p>
                        Do dolor eiusmod eu mollit dolore nostrud deserunt cillum irure esse sint irure fugiat
                        exercitation. Magna sit voluptate id in tempor elit veniam enim cupidatat ea labore elit. Aliqua
                        pariatur eu nulla labore magna dolore mollit occaecat sint commodo culpa. Eu non minim duis
                        pariatur Lorem quis exercitation. Sunt qui ex incididunt sit anim incididunt sit elit ad officia
                        id.
                    </p>
                    <p>
                        Id occaecat velit non ipsum occaecat aliqua quis ut. Eiusmod est magna non esse est ex
                        incididunt aute ullamco. Cillum excepteur sint ipsum qui quis velit incididunt amet. Qui
                        deserunt anim enim laborum cillum reprehenderit duis mollit amet ad officia enim. Minim sint et
                        quis aliqua aliqua do minim officia dolor deserunt ipsum laboris. Nulla nisi voluptate
                        consectetur est voluptate et amet. Occaecat ut quis adipisicing ad enim. Magna est magna sit
                        duis proident veniam reprehenderit fugiat reprehenderit enim velit ex. Ullamco laboris culpa
                        irure aliquip ad Lorem consequat veniam ad ipsum eu. Ipsum culpa dolore sunt officia laborum
                        quis.
                    </p>

                    <h5>没辣，不要再往下翻了，真的没有彩蛋！</h5>
                    <div class="mdl-spinner mdl-js-spinner is-active"></div>
                    <h5>这真的只是一个假装在加载的loading图标！！！（认真脸）</h5>
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

