<!--
Created by IntelliJ IDEA.
User: zhuchuansheng
Date: 2019/11/27
Time: 18:10
Describe:
To change this template use File | Settings | File Templates.
-->
<%@ page contentType="text/html; UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="app" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <%-- bootstrap.css --%>
    <link rel="stylesheet" type="text/css" href="${app}/bootstrap/css/bootstrap.min.css">
    <%-- jqGrid与boostrap.css --%>
    <link rel="stylesheet" type="text/css" href="${app}/jqGrid/css/trirand/ui.jqgrid-bootstrap.css">
    <%-- jQuery.js --%>
    <script src="${app}/js/jquery-1.10.1.min.js"></script>
    <%-- Bootstrap.js --%>
    <script src="${app}/bootstrap/js/bootstrap.min.js"></script>
    <%-- 国际化文件 --%>
    <script src="${app}/jqGrid/js/trirand/i18n/grid.locale-cn.js"></script>
    <%-- jqGrid与bootstrap.js --%>
    <script src="${app}/jqGrid/js/trirand/jquery.jqGrid.min.js"></script>
    <style>
        body { padding-top: 70px; }
    </style>
</head>
<body>

<div class="container-fluid">


    <!-- 导航栏开始 -->
    <div class="row">
        <div class="col-sm-12">

            <nav class="navbar navbar-inverse navbar-fixed-top">


                <div class="container-fluid">

                    <!-- 应用名开始 -->
                    <div class="navbar-header">
                        <h3 class="navbar-text">后台管理系统</h3>
                    </div>
                    <!-- 应用名结束 -->


                    <!-- 登陆信息开始 -->
                    <div class="collapse navbar-collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="">欢迎:小黑</a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="glyphicon glyphicon-hand-right"></span>
                                    退出登陆
                                </a>
                            </li>
                            <li>
                                <a></a>
                            </li>
                        </ul>

                    </div>
                    <!-- 登陆信息结束 -->

                </div>
            </nav>


        </div>
    </div>
    <!-- 导航栏结束 -->

    <!-- 具体内容区开始 -->
    <div class="row">

        <!-- 导航菜单开始 -->
        <div class="col-sm-2">
            <div class="panel panel-group" id="menu">

                <!-- 用户管理开始 -->
                <div class="panel panel-default text-center">

                    <!-- 标题开始 -->
                    <div class="panel-heading">
                        <h4>
                            <a href="#userManager" data-toggle="collapse" data-parent="#menu">
                                用户管理
                            </a>
                        </h4>
                    </div>
                    <!-- 标题开始 -->

                    <!-- 用户管理子项目开始 -->
                    <div class="panel-collapse collapse" id="userManager">
                        <!--<div class="panel-body">-->
                        <div class="list-group">
                            <a href="javascript:void(0);" onclick="$('#indexContent').load('${app}/jsp/userManager.jsp')" class="list-group-item">
                                用户列表
                            </a>
                            <a href="" class="list-group-item">
                                用户管理2
                            </a>
                            <a href="" class="list-group-item">
                                用户管理3
                            </a>
                        </div>
                        <!--</div>-->
                    </div>
                    <!-- 用户管理子项目结束 -->
                </div>
                <!-- 用户管理开始 -->


                <!-- 部门管理开始 -->
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h4>
                            <a href="#categoryManager" data-toggle="collapse" data-parent="#menu">
                                部门管理
                            </a>
                        </h4>
                    </div>
                    <div class="panel-collapse collapse" id="categoryManager">
                        <div class="list-group">
                            <a href="javascript:void(0)" class="list-group-item" onclick="$('#indexContent').load('${app}/jsp/departmentManager.jsp')">
                                部门列表
                            </a>
                            <a href="javascript:void(0)" class="list-group-item" onclick="$('#indexContent').load('${app}/jsp/addDepartment.jsp')">
                                部门添加
                            </a>
                            <a href="javascript:void(0)" class="list-group-item">
                                类别管理3
                            </a>
                        </div>
                    </div>
                </div>
                <!-- 类别管理结束 -->

                <!-- 图书管理开始 -->
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h4>
                            <a href="#bookManager" data-toggle="collapse" data-parent="#menu">
                                图书管理
                            </a>
                        </h4>
                    </div>
                    <div class="panel-collapse collapse" id="bookManager">
                        <div class="list-group">
                            <a href="" class="list-group-item">
                                图书管理1
                            </a>
                            <a href="" class="list-group-item">
                                图书管理2
                            </a>
                            <a href="" class="list-group-item">
                                图书管理3
                            </a>
                        </div>
                    </div>
                </div>
                <!-- 图书管理结束 -->


            </div>
        </div>
        <!-- 导航菜单结束 -->

        <!-- 内容区开始 -->
        <div class="col-sm-10" id="indexContent">

            <!-- 巨幕开始 -->
            <div class="jumbotron">
                <h1>Hello, world!</h1>
                <p>
                    This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
                </p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
            </div>
            <!-- 巨幕结束 -->

            <!-- 警告框开始 -->
            <div class="alert alert-danger alert-dismissable fade in">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4>
                    Oh snap! You got an error!
                </h4>
                <p>
                    Change this and that and try again. Duis mollis, est non commodo luctus,
                    nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum.
                </p>
                <p>
                    <a class="btn btn-danger">Take this action</a>
                    <a class="btn btn-default">Or do this</a>
                    <!--<button class="btn btn-danger">Take this action</button>
                    <button class="btn btn-default">Take this action</button>-->
                </p>
            </div>
            <!-- 警告框结束 -->

            <!--　系统状态开始　-->
            <div class="panel panel-default">
                <div class="panel-body">
                    <h5>系统状态</h5>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            60%
                        </div>
                    </div>
                </div>
            </div>
            <!--　系统状态结束　-->


            <!-- 系统状态2开始 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h5 class="panel-title">系统状态</h5>
                </div>
                <div class="panel-body">

                    <!-- 内存使用率开始 -->
                    <h5>内存使用率</h5>
                    <div class="progress">
                        <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                            <span class="sr-only">40% Complete (success)</span>
                        </div>
                    </div>
                    <!-- 内存使用率结束 -->

                    <!-- 数据库使用率开始 -->
                    <h5>数据库使用率</h5>
                    <div class="progress">
                        <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                            <span class="sr-only">20% Complete</span>
                        </div>
                    </div>
                    <!-- 数据库使用率结束 -->

                    <!-- 硬盘使用率开始 -->
                    <h5>硬盘使用率</h5>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                            <span class="sr-only">60% Complete (warning)</span>
                        </div>
                    </div>
                    <!-- 硬盘使用率结束 -->

                    <!-- CPU使用率开始 -->
                    <h5>CPU使用率</h5>
                    <div class="progress">
                        <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                            <span class="sr-only">80% Complete (danger)</span>
                        </div>
                    </div>
                    <!-- CPU使用率结束 -->
                </div>
            </div>
            <!-- 系统状态2结束 -->

        </div>
        <!-- 具体内容区结束 -->

    </div>
    <!-- 内容区结束 -->
</div>

</body>
</html>