<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu --><!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container" style="width: 600px">

            <div class="row" center>
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title" style="margin-left: 195px">注册</h3>
                        <form id="register">
                            <div class="form-row">
                                    <input id="updateId" name="id" type="hidden">
                                <div class="form-group col-md-12">
                                    <label>账户</label>
                                    <input id="username" name="username" class="form-control"
                                           placeholder="账户">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>密码</label>
                                    <input type="password" id="password" name="password" class="form-control"
                                           placeholder="密码">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>重复密码</label>
                                    <input type="password" id="password1" name="password1" class="form-control"
                                           placeholder="重复密码">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>农户名称</label>
                                    <input id="shangjiaName" name="shangjiaName" class="form-control"
                                           placeholder="农户名称">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>联系方式</label>
                                    <input id="shangjiaPhone" name="shangjiaPhone" class="form-control"
                                           onchange="shangjiaPhoneChickValue(this)"  placeholder="联系方式">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>邮箱</label>
                                    <input id="shangjiaEmail" name="shangjiaEmail" class="form-control"
                                           placeholder="邮箱">
                                </div>
                                   <div class="form-group col-md-12">
                                       <label>审核状态</label>
                                       <select id="shangjiaYesnoTypesSelect" name="shangjiaYesnoTypes" class="form-control">
                                       </select>
                                   </div>
                                   <div class="form-group col-md-12">
                                       <label>农户头像</label>
                                       <img id="shangjiaPhotoImg" src="" width="100" height="100">
                                       <input name="file" type="file" id="shangjiaPhotoupload"
                                              class="form-control-file">
                                       <input name="shangjiaPhoto" id="shangjiaPhoto-input" type="hidden">
                                   </div>
                                   <div class="form-group  col-md-12">
                                       <label>农户简介</label>
                                       <input id="shangjiaContentupload" name="file" type="file">
                                       <script id="shangjiaContentEditor" type="text/plain"
                                               style="width:800px;height:230px;"></script>
                                       <script type = "text/javascript" >
                                       //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                       //相见文档配置属于你自己的编译器
                                       var shangjiaContentUe = UE.getEditor('shangjiaContentEditor', {
                                           toolbars: [
                                               [
                                                   'undo', //撤销
                                                   'bold', //加粗
                                                   'redo', //重做
                                                   'underline', //下划线
                                                   'horizontal', //分隔线
                                                   'inserttitle', //插入标题
                                                   'cleardoc', //清空文档
                                                   'fontfamily', //字体
                                                   'fontsize', //字号
                                                   'paragraph', //段落格式
                                                   'inserttable', //插入表格
                                                   'justifyleft', //居左对齐
                                                   'justifyright', //居右对齐
                                                   'justifycenter', //居中对
                                                   'justifyjustify', //两端对齐
                                                   'forecolor', //字体颜色
                                                   'fullscreen', //全屏
                                                   'edittip ', //编辑提示
                                                   'customstyle', //自定义标题
                                               ]
                                           ]
                                       });
                                       </script>
                                       <input type="hidden" name="shangjiaContent" id="shangjiaContent-input">
                                   </div>
                                <div class="form-group col-md-12">
                                    <button id="submitBtn" type="button" class="btn btn-primary btn-lg">注册</button>
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>

                    </div>
                    <!-- /Widget Item -->
                </div>
            </div>
            <!-- /Main Content -->
        </div>
        <!-- /Page Content -->
    </div>
    <!-- Back to Top -->
    <a id="back-to-top" href="#" class="back-to-top">
        <span class="ti-angle-up"></span>
    </a>
    <!-- /Back to Top -->
    <%@ include file="../../static/foot.jsp" %>
    <script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
    <script>
        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>

        var tableName = "shangjia";
        var pageType = "register";
        var updateId = "";
        var crossTableId = -1;
        var crossTableName = '';
        var ruleForm = {};
        var crossRuleForm = {};

        // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        var shangjiaYesnoTypesOptions = [];

        var ruleForm = {};


        // 文件上传
        function upload() {
        <!-- 当前表的文件上传 -->

        $('#shangjiaPhotoupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                var photoUrl= baseUrl + 'file/download?fileName=' + data.result.file;
                document.getElementById('shangjiaPhotoImg').setAttribute('src',photoUrl);
                document.getElementById('shangjiaPhoto-input').setAttribute('value',photoUrl);
            }
        });


        $('#shangjiaContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('shangjiaContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });

        }

        // 表单提交
        function submit() {

            if (validform() == true && compare() == true) {
                let data = {};
                getContent();
                if( $("#password").val() == null || $("#password").val() == "" ){
                    alert("密码不能为空");
                    return false;
                }else if( $("#password").val() != $("#password1").val() ){
                    alert("两次密码不一致");
                    return false;
                }
                let value = $('#register').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                let json = JSON.stringify(data);
                var urlParam;
                var successMes = '';
                httpJson("shangjia/register", "POST", data, (res) => {
                    if(res.code == 0){
                        window.sessionStorage.removeItem('id');
                        alert("注册成功")
                        if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                            window.sessionStorage.removeItem('onlyme');
                            window.location.href="../../login.jsp";
                        } else {
                            window.location.href ="../../login.jsp";
                        }
                    }
                });
            } else {
                alert("表单未填完整或有错误");
            }
        }

        <!-- 查询当前表的所有列表 -->
        function shangjiaYesnoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shangjia_yesno_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shangjiaYesnoTypesOptions = res.data.list;
                }
            });
        }

        //初始化下拉框
        <!-- 初始化当前表的下拉框 -->
        function initializationShangjiayesnotypesSelect(){
            var shangjiaYesnoTypesSelect = document.getElementById('shangjiaYesnoTypesSelect');
            if(shangjiaYesnoTypesSelect != null && shangjiaYesnoTypesOptions != null  && shangjiaYesnoTypesOptions.length > 0 ){
                for (var i = 0; i < shangjiaYesnoTypesOptions.length; i++) {
                        shangjiaYesnoTypesSelect.add(new Option(shangjiaYesnoTypesOptions[i].indexName,shangjiaYesnoTypesOptions[i].codeIndex));
                }
            }
        }




        // 获取富文本框内容
        function getContent() {

            <!-- 获取当前表的富文本框内容 -->
            var shangjiaContentEditor =UE.getEditor('shangjiaContentEditor');
            if (shangjiaContentEditor.hasContents()) {
                $('#shangjiaContent-input').attr('value', shangjiaContentEditor.getPlainTxt());
            }
        }

        //数字检查
        <!-- 当前表的数字检查 -->
        function shangjiaPhoneChickValue(e){
            var this_val = e.value || 0;
            var reg=/^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("手机号不正确");
                return false;
            }
        }
        function newMoneyChickValue(e){
            var this_val = e.value || 0;
            /*if(this_val == 0){
                e.value = "";
                alert("0不允许输入");
                return false;
            }
            */
            var reg=/^[1-9][0-9]{0,5}(\.[0-9]{1,2})?$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("只允许输入整数6位,小数2位的数字");
                return false;
            }
        }
        function shangjiaDeleteChickValue(e){
            var this_val = e.value || 0;
            /*if(this_val == 0){
                e.value = "";
                alert("0不允许输入");
                return false;
            }*/
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

        function exit() {
            window.sessionStorage.removeItem("id");
            window.location.href = "../../login.jsp";
        }
        // 表单校验
        function validform() {
            return $("#register").validate({
                rules: {
                        username: "required",
                        password: "required",
                        shangjiaName: "required",
                        shangjiaPhone: "required",
                        shangjiaEmail: "required",
                        shangjiaYesnoTypes: "required",
                        shangjiaPhoto: "required",
                        newMoney: "required",
                        shangjiaContent: "required",
                        shangjiaDelete: "required",
                },
                messages: {
                        username: "账户不能为空",
                        password: "密码不能为空",
                        shangjiaName: "农户名称不能为空",
                        shangjiaPhone: "联系方式不能为空",
                        shangjiaEmail: "邮箱不能为空",
                        shangjiaYesnoTypes: "审核状态不能为空",
                        shangjiaPhoto: "农户头像不能为空",
                        newMoney: "现有余额不能为空",
                        shangjiaContent: "农户简介不能为空",
                        shangjiaDelete: "逻辑删除不能为空",
                }
            }).form();
        }

        $(document).ready(function () {
            //设置右上角用户名
            // $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            // //设置项目名
            // $('.sidebar-header h3 a').html(projectName)
            // //设置导航栏菜单
            // setMenu();
            $('#exitBtn').on('click', function (e) {
                e.preventDefault();
                exit();
            });
            //查询所有下拉框
        <!--  当前表的下拉框  -->
            shangjiaYesnoTypesSelect();

            // 初始化下拉框
        <!--  初始化当前表的下拉框  -->
            initializationShangjiayesnotypesSelect();


            //注册表单验证
            $(validform());

            //初始化上传按钮
            upload();
        <%@ include file="../../static/myInfo.js"%>
                    $('#submitBtn').on('click', function (e) {
                        e.preventDefault();
                        //console.log("点击了...提交按钮");
                        submit();
                    });
        });



        //比较大小
        function compare() {
            var largerVal = null;
            var smallerVal = null;
            if (largerVal != null && smallerVal != null) {
                if (largerVal <= smallerVal) {
                    alert(smallerName + '不能大于等于' + largerName);
                    return false;
                }
            }
            return true;
        }


        // 用户登出
        <%@ include file="../../static/logout.jsp"%>
    </script>
</body>

</html>