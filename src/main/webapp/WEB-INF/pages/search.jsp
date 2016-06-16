<%--
  Created by IntelliJ IDEA.
  User: 姚鹏飞
  Date: 2016/6/16
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<form xmlns="http://www.w3.org/1999/html">
<head>
    <title>Search</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--fonts-->
    <link href='http://fonts.useso.com/css?family=Pathway+Gothic+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!--//fonts-->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <!-- js -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="/scripts/jquery.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <!-- js -->

</head>
<body>
<p>
    <!-- banner -->
    <img src="images/7.jpg" alt=""/>


    <!-- //banner -->
    <!--<div class="back-button">
        <div class="container">
            <div class="back"><a href="index.html" class="hvr-rectangle-out button">HOME</a></div>
        </div>
    </div>
    <!-- event-bottom -->
<div class="input-group">
    <input type="text" class="form-control"placeholder="来看看项目吧">
    <span class="input-group-addon"></span>
</div>
<br>
<ul class="nav nav-tabs">
    <li class="active"><a href="#">所有项目</a></li>
    <li><a href="#">关注过的</a></li>
    <li><a href="#">推荐</a></li>


</ul>
<ol class="breadcrumb">

    <li><a href="#">all</a></li>
    <li class="active">共3个项目</li>
</ol>

<form style="background-color: white;border:1px solid #ce8483">

    <p style="float: left;border-bottom: 1px dashed #ccc;margin-bottom:5px;width:1200px;background-color:white">
        <a href="#" target="_blank"  style="display:block;line-height:25px;height:25px;width:100px;color:black;padding:0 10px;background-color: white;float:left">项目领域:</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #c9302c; padding:0 10px;float:left">不限</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">医疗</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">教育</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">互联网</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">金融</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">生物</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">人文</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">社会</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">体育</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">旅游</a>

    </p>

    <p style="float: left;border-bottom: 1px dashed #ccc;margin-bottom:5px;width:1200px;">
        <a href="#" target="_blank"  style="display:block;line-height:25px;height:25px;width:100px;color:black;padding:0 10px;background-color: seashell;float:left">项目阶段:</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #c9302c; padding:0 10px;float:left">不限</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">审核中</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">招募中</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">进行中</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">已结束</a>

    </p>

    <p style="float: left;border-bottom: 1px dashed #ccc;margin-bottom:5px;width:1200px;background-color: white">
        <a href="#" target="_blank"  style="display:block;line-height:25px;height:25px;width:100px;color:black;padding:0 10px;background-color: white;float:left">发起类型:</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #c9302c; padding:0 10px;float:left">不限</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">学生创业项目</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">导师的科研成果</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">企业项目</a>

    </p>

    <p style="float: left;border-bottom: 1px dashed #ccc;margin-bottom:5px;width:1200px;">
        <a href="#" target="_blank"  style="display:block;line-height:25px;height:25px;width:100px;color:black;padding:0 10px;background-color:seashell;float:left">合作意向:</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #c9302c; padding:0 10px;float:left">不限</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #1d130f;padding:0 10px;float:left">需要导师</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #1d130f;padding:0 10px;float:left">需要投资人</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">需要web开发</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">需要市场运营</a>
    </p>
    <p style="float: left;border-bottom: 1px dashed #ccc;margin-bottom:5px;width:1200px;background-color: white">
        <a href="#" target="_blank"  style="display:block;line-height:25px;height:25px;width:100px;color:black;padding:0 10px;background-color: white;float:left">产品类别:</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #c9302c; padding:0 10px;float:left">不限</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">web端</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">移动端</a>


        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">线下实体</a>

    </p>
    <p style="float: left;border-bottom: 1px dashed #ccc;margin-bottom:5px;width:1200px;">
        <a href="#" target="_blank"  style="display:block;line-height:25px;height:25px;width:100px;color:black;padding:0 10px;background-color:seashell;float:left">地区:</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #c9302c; padding:0 10px;float:left">不限</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #1d130f;padding:0 10px;float:left">上海</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color: #1d130f;padding:0 10px;float:left">北京</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">杭州</a>

        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">广州</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">深圳</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">香港</a>
        <a href="#" target="_blank" style="display:block;line-height:25px;height:25px;color:#1d130f;padding:0 10px;float:left">湖南</a>
    </p>


</form>


<form method="post" name="form">
    <table auto height="160"  width="1200" > <tbody>
    <tr style="border-bottom:#999 1px dashed;">
        <td ><a href="http://zu.sh.fang.com/chuzu/3_241040846_1.htm" ><img src="images/t1.jpg" onmouseover="zoom(this,1.2)" onmouseout="zoom(this,1/1.2)"></a>
            <script>
                function zoom(obj,rate){
                    obj.width=obj.width*rate;
                    obj.heigth=obj.heigth*rate;
                }
            </script></td>
        <td >&nbsp;<h2 style="font-family: 'Adobe 黑体 Std R'">复古 漆具 收集创新创业</h2>
            <br><p style="font-weight: bold ;color: #ce8483 ">教育 | 招募中 | 学生创业项目 |  需要投资者 | 上海 | web端</p>
            <br><p style="color: #777777">“潜力股”“ 发展前景好”</p>
            <br><p><img  style="float: left" src="images/left.png">查看详情</p><br>
            <p style="color: #c9302c;font-family: 'Adobe 黑体 Std R'" ><a href="login"><img  style="float: left" src="images/like.png"></a>收藏</p>


        </td>

    </tr>
    <tr style="border-bottom:#999 1px dashed;">
        <td ><img src="images/t2.jpg" onmouseover="zoom(this,1.2)" onmouseout="zoom(this,1/1.2)">
            <script>
                function zoom(obj,rate){
                    obj.width=obj.width*rate;
                    obj.heigth=obj.heigth*rate;
                }
            </script></td>
        <td >&nbsp;<h2 style="font-family: 'Adobe 黑体 Std R'">O2O开放办公室 新媒体社区</h2>
            <br><p style="font-weight: bold ;color: #ce8483 ">教育 | 招募中 | 学生创业项目 |  需要投资者 | 上海 | ios端</p>
            <br><p style="color: #777777">“脑洞大开”“ 大神云集”</p>
            <br><p><img  style="float: left" src="images/left.png">查看详情</p><br>
            <p style="color: #c9302c;font-family: 'Adobe 黑体 Std R'" ><a href="login"><img  style="float: left" src="images/like.png"></a>收藏</p>


        </td>

    </tr>
    <tr style="border-bottom:#999 1px dashed;">
        <td ><img src="images/t3.jpg" onmouseover="zoom(this,1.2)" onmouseout="zoom(this,1/1.2)">
            <script>
                function zoom(obj,rate){
                    obj.width=obj.width*rate;
                    obj.heigth=obj.heigth*rate;
                }
            </script></td>
        <td >&nbsp;<h2 style="font-family: 'Adobe 黑体 Std R'">私人上门厨房 移动豪华主厨</h2>
            <br><p style="font-weight: bold ;color: #ce8483 ">餐饮 | 招募中 | 企业创业项目 |  需要开发者 | 上海 | web端</p>
            <br><p style="color: #777777">“美味”“ 创意优先”</p>
            <br><p><img  style="float: left" src="images/left.png">查看详情</p><br>
            <p style="color: #c9302c;font-family: 'Adobe 黑体 Std R'" ><a href="login"><img  style="float: left" src="images/like.png"></a>收藏</p>


        </td>

    </tr>
    <tr>
        <td></td><td>

    </td>

    </tr>
    </tbody>
    </table>
    <img src="images/last.jpg">
</form>
<form style="background-color: seashell">
    <h4 style="font-family: 'Adobe 黑体 Std R';margin-left: 30px">    常见问题:</h4><p style="margin-left: 30px;color: #5e5e5e;">找不到项目 无法联系到项目负责人 中途退出项目怎么办 个人信誉 如何判断项目的优劣 联系</p>
    <h4 style="font-family: 'Adobe 黑体 Std R';margin-left: 30px">  联系我们:</h4><p style="margin-left: 30px;color: #5e5e5e">QQ:12345234556 微信公关团队：XWWEWdf 微博：@ckjsdjfwl123</p>
</form>

</body>
</html>
