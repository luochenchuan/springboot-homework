<%@ page contentType="text/html; UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<script>

    $(function () {

        $("#departmentTable").jqGrid({

            url: "${pageContext.request.contextPath}/department/queryByPaging",
            datatype: "json",           //响应回来的数据类型
            styleUI: "Bootstrap",
            height: 160,
            autowidth: true,
            pager: "#pager",            //分页显示的位置
            rowNum: 3,                  //每一页显示数量
            rownumbers: true,
            viewrecords: true,          //是否显示总记录数
            colModel: [
                {
                    label: "部门名称",
                    name: "departmentName",
                    align: "center"
                },
                {
                    label: "部门领导",
                    name: "managerId",
                    align: "center"
                },
                {
                    label: "部门地址",
                    name: "locationId",
                    align: "center"
                },
                {
                    label: "操作",
                    name: "",
                    formatter: function (cellvalue, options, rowObject) {

                        var btn = "<button class='btn btn-info' employeeId='"+options['rowId']+"' onclick='updateEmployee(this)'>修改</button>" +
                            "<button class='btn btn-danger' employeeId='"+options['rowId']+"' onclick='deleteEmployee(this)'>删除</button>";

                        return btn;
                    },
                },
            ]


        });
    });

</script>

<div class="page-header"  style="margin-top: -20px">
    <h2>
        部门信息列表
    </h2>
</div>

<div class="panel panel-default">

    <%-- 搜索开始 --%>
    <div class="panel-heading">
        <form action="" method="post" class="form-inline">

            <div class="form-group">
                <label for="departmentName" class="control-label">部门名称:</label>
                <input type="text" id="departmentName" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="managerName" class="control-label">部门领导:</label>
                <input type="text" id="managerName" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="locationName" class="control-label">部门地址:</label>
                <input type="text" id="locationName" class="form-control"/>
            </div>

            <button class="btn btn-info">搜索</button>
        </form>
    </div>
    <%-- 搜索结束 --%>

    <%--  数据展示开始 --%>
    <div class="panel-body">
        <table id="departmentTable"></table>
    </div>
    <%--  数据展示结束 --%>

    <%-- 页码开始 --%>
    <div class="panel-footer" id="pager" style="height: 60px">

    </div>
    <%-- 页码结束 --%>

</div>