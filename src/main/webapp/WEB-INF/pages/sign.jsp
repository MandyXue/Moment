<%--
  Created by IntelliJ IDEA.
  User: 姚鹏飞
  Date: 2016/6/15
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>sign</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Sign in</title>

    <c:set var="bp" value="${pageContext.request.contextPath}"/>

    <!-- Bootstrap -->
    <link href="/moment/css/bootstrap.min.css" rel="stylesheet">
    <link href="/moment/css/index.css" rel="stylesheet">
    <link href="/moment/css/sign.css" rel="stylesheet">
    <link href="/moment/css/input.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index">MOMENT</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="#">发布</a></li>
                <li><a href="#">管理</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人中心 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">我的关注</a></li>
                        <li><a href="#">我的项目</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">个人信息</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="sign">注册</a></li>
                <li><a href="login">登陆</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>

</nav>
<div class="jumbotron row">
    <div class="container col-md-4">
        <form action="sign" method="post">
            <div class="input-container">
                <span class="input input--hoshi">
                    <input class="input__field input__field--hoshi" type="email" id="input-1" name="email"/>
                    <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-1">
                        <span class="input__label-content input__label-content--hoshi">注册邮箱</span>
                    </label>
                </span>

                <span class="input input--hoshi">
                    <input class="input__field input__field--hoshi" type="password" id="input-2" name="password"/>
                    <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-2">
                        <span class="input__label-content input__label-content--hoshi">密码</span>
                    </label>
                </span>
                <span class="input input--hoshi">
                    <input class="input__field input__field--hoshi" type="text" id="input-3"/>
                    <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="input-3">
                        <span class="input__label-content input__label-content--hoshi">验证码</span>
                    </label>
                </span>
            </div>
            <button type="button" class="btn btn-default send">
                <span class="glyphicon glyphicon-comment" aria-hidden="true"></span>
            </button>
            <button type="submit" class="btn btn-default btn-lg btn-block btn-login">注 册</button>
        </form>
    </div>

</div>

<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>MOMENT</h1>
                <p>一个学生-企业-导师的创新创业项目交流发布平台</p>
            </div>
            <div class="col-md-3">
                <address>
                    <strong>Tongji University,</strong><br>
                    4800 Cao'an Highway, Jiading District,<br>
                    Shanghai 201804<br>
                </address>
            </div>
            <div class="col-md-3">
                <address>
                    <strong>Conatct</strong><br>
                    <a href="mailto: me@tungyee-ho.site">me@tungyee-ho.site</a>
                </address>
            </div>
        </div>
    </div>
</div>

<script src="/moment/js/classie.js"></script>
<script>
    (function() {
        // trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
        if (!String.prototype.trim) {
            (function() {
                // Make sure we trim BOM and NBSP
                var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
                String.prototype.trim = function() {
                    return this.replace(rtrim, '');
                };
            })();
        }

        [].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
            // in case the input is already filled..
            if( inputEl.value.trim() !== '' ) {
                classie.add( inputEl.parentNode, 'input--filled' );
            }

            // events:
            inputEl.addEventListener( 'focus', onInputFocus );
            inputEl.addEventListener( 'blur', onInputBlur );
        } );

        function onInputFocus( ev ) {
            classie.add( ev.target.parentNode, 'input--filled' );
        }

        function onInputBlur( ev ) {
            if( ev.target.value.trim() === '' ) {
                classie.remove( ev.target.parentNode, 'input--filled' );
            }
        }
    })();
</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/moment/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="http://v3.bootcss.com/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
