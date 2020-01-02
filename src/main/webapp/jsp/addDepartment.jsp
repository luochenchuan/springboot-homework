<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<script>
    
    $(function () {

        /* 部门领导查询开始 */
        requestSendByAjax("${pageContext.request.contextPath}/employee/queryManager", function (result) {
            if(result == undefined){
                return;
            }
            //遍历
            $(result).each(function (index, item) {

                //创建标签
                var Option = $("<option>");

                //赋值
                Option.val(item["employeeId"]);
                Option.text(item["firstName"]+"-"+item["lastName"])

                //追加
                $("#managerName").append(Option);
            });
        });
        /* 部门领导查询结束 */


        /* 部门地址查询开始 */
        requestSendByAjax("${pageContext.request.contextPath}/location/queryAll",function (result) {

            if(result == undefined){
                return;
            }
            //遍历
            $(result).each(function (index, item) {

                //创建标签
                var Option = $("<option>");

                //赋值
                Option.val(item["locationId"]);
                Option.text(item["city"]);

                //追加
                $("#location").append(Option);
            });
        });
        /* 部门地址查询结束 */

        /* 点击下拉框时,请求选择消失 */
        $("#managerName").click(function () {

            $("#choice").remove();
        });
        $("#location").click(function () {

            $("#location-choice").remove();
        });
        /* 点击下拉框时,请求选择消失 */



        $("#departmentFormBtn").click(function () {

            var data = $("#departmentForm").serialize();
            $.ajax({
                url: "${pageContext.request.contextPath}/department/addDepartment",
                type: "POST",
                data: data,
                datatype: "json",
                success: function (reulst) {
                    console.log(reulst);
                }
            })
        });



    })
    
    
    
    function requestSendByAjax(url, fun) {
        $.ajax({
            url: url,
            type: "post",
            datatype: "json",
            success: function (result) {
                fun(result);
            }
        });
    }
    

    

</script>

<div class="page-header" style="margin-top: -20px">
    <h2>
        部门添加
    </h2>
</div>

<div class="alert alert-warning alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <strong>Warning!</strong> Better check yourself, you're not looking too good.
</div>

<div class="panel panel-default">

    <div class="panel-body">

        <form id="departmentForm" class="form-horizontal">

            <div class="form-group">
                <label for="departmentName" class="col-sm-2 control-label">部门名称</label>
                <div class="col-sm-10">
                    <input type="text" name="departmentName" class="form-control" id="departmentName" placeholder="department name">
                </div>
            </div>

            <div class="form-group">
                <label for="managerName" class="col-sm-2 control-label">领导姓名</label>
                <div class="col-sm-10">
                    <select id="managerName" class="form-control" name="managerId">
                        <option id="choice" value="-1">----------请选择----------</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="location" class="col-sm-2 control-label">部门地址</label>
                <div class="col-sm-10">
                    <select id="location" class="form-control" name="locationId">
                        <option id="location-choice" value="-1">----------请选择----------</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" id="departmentFormBtn" class="btn btn-default">添加</button>
                </div>
            </div>
        </form>

    </div>

</div>