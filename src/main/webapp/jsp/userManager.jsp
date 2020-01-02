<!--
Created by IntelliJ IDEA.
User: zhuchuansheng
Date: 2019/11/27
Time: 18:10
Describe:
To change this template use File | Settings | File Templates.
-->
<%@page pageEncoding="UTF-8" isELIgnored="false" contentType="text/html; UTF-8"%>
<style>
    body {
        padding-top: 70px;
    }
    th{
        text-align: center;
        height: 19px;
    }
    #pager{
        height: 64px;
    }
</style>

<script>

    $(function () {

        $("#userManagerList").jqGrid({

            url: "${pageContext.request.contextPath}/employee/queryPaging",
            datatype: "json",           //响应回来的数据类型
            styleUI: "Bootstrap",       //
            editurl: "${pageContext.request.contextPath}/employee/editInfo",
            autowidth: true,            //与父容器自适应
            height: 200,                //设置表格的高度
            pager: "#pager",            //分页显示的位置
            rowNum: 3,                  //每一页显示数量
            rownumbers: true,
            viewrecords: true,          //是否显示总记录数
            colNames: ['编号', 'firstName', "lastName", '邮件', '电话号码', "工资", "工作ID", '任职时间',"操作"],
            colModel: [
                {name: "employeeId", align: "center", editable: true, hidden: true, key: true},
                {name: "firstName", align: "center", editable: true, search: true},
                {name: "lastName", align: "center", editable: true, search: false},
                {name: "email", align: "center", editable: true, search: false},
                {name: "phoneNumber", align: "center", editable: true, search: true},
                {name: "salary", align: "center", editable: true, search: false},
                {name: "jobId", align: "center", editable: true, search: false},
                {name: "hireDate", align: "center", editable: true, edittype: "date", search: false},
                {name: "", formatter: function (cellvalue, options, rowObject) {

                        var btn = "<button class='btn btn-info' employeeId='"+options['rowId']+"' onclick='updateEmployee(this)'>修改</button>" +
                            "<button class='btn btn-danger' employeeId='"+options['rowId']+"' onclick='deleteEmployee(this)'>删除</button>";

                        return btn;
                    },
                },
            ],

        });

        $('#userManagerList').navGrid('#pager',
            // the buttons to appear on the toolbar of the grid
            {
                edit: true, add: true, del: true, search: true,
                refresh: true, view: true,
                position: "left", cloneToTop: true
            },
            // options for the Edit Dialog
            {
                editCaption: "修改用户信息",
                recreateForm: true,
                checkOnUpdate : true,
                checkOnSubmit : true,
                closeAfterEdit: true,
                top: 160,
                left: 430,
                errorTextFormat: function (data) {
                    return 'Error: ' + data.responseText
                }
            },
            // options for the Add Dialog
            {
                addCaption: "添加员工信息",
                closeAfterAdd: true,
                recreateForm: true,
                top: 160,
                left: 430,
                errorTextFormat: function (data) {
                    return 'Error: ' + data.responseText
                }
            },
            // options for the Delete Dailog
            {
                errorTextFormat: function (data) {
                    return 'Error: ' + data.responseText
                }
            });
    })

    /* 修改用户信息开始 */
    function updateEmployee(obj) {
        var id = $(obj).attr("employeeId");
        jQuery("#userManagerList").jqGrid('editGridRow', id, {
            reloadAfterSubmit : true,
            editCaption: "修改用户信息",
            recreateForm: true,
            checkOnUpdate : true,
            checkOnSubmit : true,
            closeAfterEdit: true,
            top: 160,
            left: 430,
            errorTextFormat: function (data) {
                return 'Error: ' + data.responseText
            }
        });
    }
    /* 修改用户信息结束 */


    /* 添加用户信息开始 */
    function addEmployee() {
        jQuery("#userManagerList").jqGrid('editGridRow', "new", {
            addCaption: "添加员工信息",
            reloadAfterSubmit : true,
            closeAfterAdd: true,
            recreateForm: true,
            top: 160,
            left: 430,
            errorTextFormat: function (data) {
                return 'Error: ' + data.responseText
            }
        });
    }
    /* 添加用户信息结束 */


    /* 删除用户信息开始 */
    function deleteEmployee(obj) {

        var id = $(obj).attr("employeeId");
        jQuery("#userManagerList").jqGrid('delGridRow', id, {
            reloadAfterSubmit : true
        });
    }
    /* 删除用户信息结束 */


    function searchEmployee() {
        jQuery("#userManagerList").jqGrid('searchGrid', {
            sopt : [ 'bw']
        });
    }


</script>

<!-- 具体内容区开始 -->
<div class="col-sm-12">

    <!-- 标题开始 -->
    <div class="page-header" style="margin-top: -20px">
        <h2>用户管理</h2>
    </div>
    <!-- 标题结束 -->

    <%--<!-- 面包屑开始 -->
    <div>
        <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Library</a></li>
            <li class="active">Data</li>
        </ol>
    </div>
    <!-- 面包屑结束 -->--%>

    <!--操作界面开始 -->
    <div>
        <ul class="nav nav-tabs">
            <li>
                <a href="#userList" data-toggle="tab" class="active">
                    用户列表
                </a>
            </li>
            <li>
                <a href="#userList" data-toggle="tab" id="insertUserModal" onclick="addEmployee()">
                    用户添加
                </a>
            </li>
        </ul>

        <div class="tab-content">

            <!-- 用户列表展示开始 -->
            <div id="userList" class="tab-pane active">
                <div class="panel panel-default">

                    <!-- 搜索开始 -->
                    <div class="panel-heading">
                        <form id="searchEmployeeForm" method="post" class="form-inline text-center">

                            <!-- 姓名 -->
                            <div class="form-group">
                                <label class="control-label" for="userName">
                                    姓名
                                </label>
                                <input type="text" id="userName" name="firstName" class="form-control"/>
                            </div>

                            <!-- 手机 -->
                            <div class="form-group">
                                <label class="control-label" for="phone">
                                    手机
                                </label>
                                <input type="text" class="form-control" name="phoneNumber" id="phone"/>
                            </div>

                            <!-- 工作ID -->
                            <div class="form-group">
                                <label class="control-label" for="activation">工作名称</label>
                                <select class="form-control" name="jobId" id="activation">
                                    <option value="-1">---请选择---</option>
                                    <option value="AD_PRES">AD_PRES</option>
                                    <option value="AD_VP">AD_VP</option>
                                </select>
                            </div>

                            <!-- 按钮 -->
                            <button type="button" onclick="searchEmployee()" class="btn btn-info">查询</button>

                        </form>
                    </div>
                    <!-- 搜索结束 -->

                    <!-- 表格数据展示开始 -->
                    <div class="panel-body">
                        <table id="userManagerList" class="table table-bordered table-striped table-hover"></table>
                    </div>
                    <!-- 表格数据展示结束 -->

                    <!-- 页码展示开始 -->
                    <div id="pager" class="panel-footer"></div>
                    <!-- 页码展示结束 -->

                </div>
            </div>
            <!-- 用户列表展示结束 -->

            <!--<div id="userInsert" class="tab-pane">
                内容2
            </div>-->
        </div>
    </div>
    <!--操作界面结束 -->

</div>
<!-- 具体内容区结束 -->