<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Metronic | Form Stuff - Form Components</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="../../css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="../../css/bootstrap-fileupload.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/jquery.gritter.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/chosen.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/select2_metro.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/jquery.tagsinput.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/clockface.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/bootstrap-wysihtml5.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/datepicker.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/timepicker.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/colorpicker.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/bootstrap-toggle-buttons.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/daterangepicker.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/datetimepicker.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/multi-select-metro.css"/>
    <link href="../../css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="../../image/favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <div class="container-fluid">
            <!-- BEGIN LOGO -->
            <a class="brand" href="index.html">
                <img src="../../image/logo.png" alt="logo"/>
            </a>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                <img src="../../image/menu-toggler.png" alt=""/>
            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav pull-right">
                <li class="dropdown user">
                    <a href="/login_user" class="dropdown-toggle" data-toggle="dropdown">
                        <img alt="" src="../../image/avatar1_small.jpg"/>
                        <span class="username">用户名：${user.name} </span>
                        <i class="icon-angle-down"></i>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a href="/updata_user"><i class="icon-user"></i> 个人信息</a></li>
                        <li><a href="page_calendar.html"><i class="icon-calendar"></i> My Calendar</a></li>
                        <li><a href="inbox.html"><i class="icon-envelope"></i> My Inbox(3)</a></li>
                        <li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
                        <li class="divider"></li>
                        <li><a href="extra_lock.html"><i class="icon-lock"></i> Lock Screen</a></li>
                        <li><a href="/login_out"><i class="icon-key"></i> 退出 登录</a></li>
                    </ul>
                </li>

                <!-- END INBOX DROPDOWN -->
                <li class="dropdown user">
                    <!-- BEGIN TODO DROPDOWN -->
                    <a href="/login_user"><i class="icon-user"></i> 登录 </a><br/>
                </li>

                <li class="dropdown user">
                    <a href="/register"><i class="icon-user"></i> 注册</a><br/>
                    <!-- END TO DO DROP DOWN -->
                </li>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
            <!-- END TOP NAVIGATION MENU -->
        </div>

    </div>
</div>
<!-- END HEADER -->
<!-- BEGIN CONTAINER -->
<div class="page-container row-fluid">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar nav-collapse collapse">
        <!-- BEGIN SIDEBAR MENU -->
        <!-- BEGIN SIDEBAR MENU -->

        <ul class="page-sidebar-menu">

            <li>

                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

                <div class="sidebar-toggler hidden-phone"></div>

                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

            </li>

            <li>

                <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

                <form class="sidebar-search">

                    <div class="input-box">

                        <a href="javascript:;" class="remove"></a>

                        <input type="text" placeholder="Search..."/>

                        <input type="button" class="submit" value=" "/>

                    </div>

                </form>

                <!-- END RESPONSIVE QUICK SEARCH FORM -->

            </li>


            <!-- from表单 -->
            <li class="">
                <a href="javascript:;">
                    <i class="icon-table"></i>
                    <span class="title">物联网终端管理</span>
                    <span class="arrow "></span>
                </a>

                <ul class="sub-menu">
                    <li>
                        <a href="/product_infrom">
                            产品信息</a>
                    </li>
                    <li>
                        <a href="/equipment_list">
                            设备信息</a>
                    </li>
                    <li>
                        <a href="/entity_info">
                            数据流信息</a>
                    </li>
                </ul>
            </li>

            <li class="start active ">
                <a href="/iotcloud">
                    <i class="icon-home"></i>
                    <span class="title">仪表盘</span>
                    <span class="selected"></span>
                </a>
            </li>
        </ul>
        <!-- END SIDEBAR MENU -->
    </div>

    <!-- END SIDEBAR -->

    <!-- BEGIN PAGE -->

    <div class="page-content">

        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <div id="portlet-config" class="modal hide">

            <div class="modal-header">

                <button data-dismiss="modal" class="close" type="button"></button>

                <h3>portlet Settings</h3>

            </div>

            <div class="modal-body">

                <p>Here will be a configuration form</p>

            </div>

        </div>

        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <!-- BEGIN PAGE CONTAINER-->

        <div class="container-fluid">

            <!-- BEGIN PAGE HEADER-->

            <div class="row-fluid">

                <div class="span12">

                    <!-- BEGIN STYLE CUSTOMIZER -->

                    <div class="color-panel hidden-phone">

                        <div class="color-mode-icons icon-color"></div>

                        <div class="color-mode-icons icon-color-close"></div>

                        <div class="color-mode">

                            <p>THEME COLOR</p>

                            <ul class="inline">

                                <li class="color-black current color-default" data-style="default"></li>

                                <li class="color-blue" data-style="blue"></li>

                                <li class="color-brown" data-style="brown"></li>

                                <li class="color-purple" data-style="purple"></li>

                                <li class="color-grey" data-style="grey"></li>

                                <li class="color-white color-light" data-style="light"></li>

                            </ul>

                            <label>

                                <span>Layout</span>

                                <select class="layout-option m-wrap small">

                                    <option value="fluid" selected>Fluid</option>

                                    <option value="boxed">Boxed</option>

                                </select>

                            </label>

                            <label>

                                <span>Header</span>

                                <select class="header-option m-wrap small">

                                    <option value="fixed" selected>Fixed</option>

                                    <option value="default">Default</option>

                                </select>

                            </label>

                            <label>

                                <span>Sidebar</span>

                                <select class="sidebar-option m-wrap small">

                                    <option value="fixed">Fixed</option>

                                    <option value="default" selected>Default</option>

                                </select>

                            </label>

                            <label>

                                <span>Footer</span>

                                <select class="footer-option m-wrap small">

                                    <option value="fixed">Fixed</option>

                                    <option value="default" selected>Default</option>

                                </select>

                            </label>

                        </div>

                    </div>

                    <!-- END BEGIN STYLE CUSTOMIZER -->

                    <h3 class="page-title">

                    </h3>

                    <ul class="breadcrumb">

                        <li>
                            <i class="icon-home"></i>
                            <a href="index.html">系统首页</a>
                            <span class="icon-angle-right"></span>
                        </li>

                        <li>
                            <a href="#">产品信息</a>
                        </li>


                    </ul>

                </div>

            </div>

            <!-- END PAGE HEADER-->

            <!-- BEGIN PAGE CONTENT-->

            <div class="row-fluid">
                <div class="span12">
                    <!-- BEGIN SAMPLE FORM PORTLET-->
                    <div class="portlet box blue">
                        <div class="portlet-title">
                            <div class="caption"><i class="icon-reorder"></i> 产 品 信 息</div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"></a>
                                <a href="#portlet-config" data-toggle="modal" class="config"></a>
                                <a href="javascript:;" class="reload"></a>
                                <a href="javascript:;" class="remove"></a>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <!-- BEGIN FORM-->${msg}
                            <form action="product_insert" class="form-horizontal">
                                <div class="control-group">
                                    <label class="control-label">产品名</label>
                                    <div class="controls">
                                        <input type="text" class="span6 m-wrap" name="name"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">产品行业</label>
                                    <div class="controls">
                                        <input type="text" class="span6 m-wrap" name="industry"/>
                                        <!-- <span class="help-inline">密码</span> -->
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">产品类别</label>
                                    <div class="controls">
                                        <input type="text" class="span6 m-wrap" name="category"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">产品简介</label>
                                    <div class="controls">
                                        <input type="text" class="span6 m-wrap" name="introduction"/>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <button type="submit" class="btn blue">添加</button>
                                    <button type="#" class="btn">取消</button>
                                </div>
                            </form>
                            <!-- END FORM-->
                        </div>
                    </div>
                    <!-- END SAMPLE FORM PORTLET-->
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <!-- /.panel-heading -->
                        <table class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>产品编号</th>
                                <th>产品名称</th>
                                <th>产品行业</th>
                                <th>产品类别</th>
                                <th>产品简介</th>
                                <th>创建时间</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${products}" var="row">
                                <tr>
                                    <td>${row.id}</td>
                                    <td><a href="/equipment_infrom?pid=${row.id}&name=${row.name}">${row.name}</a></td>
                                    <td>${row.industry}</td>
                                    <td>${row.category}</td>
                                    <td>${row.introduction}</td>
                                    <td>${row.createtime}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <div class="col-md-12 text-right">
                            <itheima:page url="${pageContext.request.contextPath }/customer/list.action"/>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>


        </div>
        <!-- END PAGE -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <div class="footer">
        <div class="footer-tools">
			<span class="go-top">
			<i class="icon-angle-up"></i>
			</span>
        </div>
    </div>

    <!-- END FOOTER -->

    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

    <!-- BEGIN CORE PLUGINS -->

    <script src="../../js/jquery-1.10.1.min.js" type="text/javascript"></script>

    <script src="../../js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

    <!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

    <script src="../../js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>

    <!--[if lt IE 9]>

    <script src="../../js/excanvas.min.js"></script>

    <script src="../../js/respond.min.js"></script>

    <![endif]-->

    <script src="../../js/jquery.slimscroll.min.js" type="text/javascript"></script>

    <script src="../../js/jquery.blockui.min.js" type="text/javascript"></script>

    <script src="../../js/jquery.cookie.min.js" type="text/javascript"></script>

    <script src="../../js/jquery.uniform.min.js" type="text/javascript"></script>

    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script type="text/javascript" src="../../js/ckeditor.js"></script>
    <script type="text/javascript" src="../../js/bootstrap-fileupload.js"></script>
    <script type="text/javascript" src="../../js/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="../../js/select2.min.js"></script>
    <script type="text/javascript" src="../../js/wysihtml5-0.3.0.js"></script>
    <script type="text/javascript" src="../../js/bootstrap-wysihtml5.js"></script>
    <script type="text/javascript" src="../../js/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.toggle.buttons.js"></script>
    <script type="text/javascript" src="../../js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="../../js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="../../js/clockface.js"></script>
    <script type="text/javascript" src="../../js/date.js"></script>
    <script type="text/javascript" src="../../js/daterangepicker.js"></script>
    <script type="text/javascript" src="../../js/bootstrap-colorpicker.js"></script>
    <script type="text/javascript" src="../../js/bootstrap-timepicker.js"></script>
    <script type="text/javascript" src="../../js/jquery.inputmask.bundle.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.input-ip-address-control-1.0.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.multi-select.js"></script>
    <script src="../../js/bootstrap-modal.js" type="text/javascript"></script>
    <script src="../../js/bootstrap-modalmanager.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="../../js/app.js"></script>
    <script src="../../js/form-components.js"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            // initiate layout and plugins
            App.init();
            FormComponents.init();
        });
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>