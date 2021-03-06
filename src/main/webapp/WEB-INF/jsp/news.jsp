<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>

    <meta charset="utf-8"/>

    <title>物联网云操作平台</title>

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

    <link href="../../css/jquery.gritter.css" rel="stylesheet" type="text/css"/>

    <link href="../../css/daterangepicker.css" rel="stylesheet" type="text/css"/>

    <link href="../../css/fullcalendar.css" rel="stylesheet" type="text/css"/>

    <link href="../../css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>

    <link href="../../css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>

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
                        <li class="divider"></li>
                        <li><a href="/login_out"><i class="icon-key"></i> 退出 登录</a></li>
                    </ul>
                </li>

                <!-- END INBOX DROPDOWN -->
                <li class="dropdown user">
                    <!-- BEGIN TODO DROPDOWN -->
                    <a href="/login"><i class="icon-user"></i> 登录 </a><br/>
                </li>

                <li class="dropdown user">
                    <a href="/register"><i class="icon-user"></i> 注册</a><br/>
                    <!-- END TODO DROPDOWN -->
                </li>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
            <!-- END TOP NAVIGATION MENU -->
        </div>

    </div>

    <!-- END TOP NAVIGATION BAR -->

</div>

<!-- END HEADER -->
<div class="copyrights">Collect from</div>

<!-- BEGIN CONTAINER -->

<div class="page-container">

    <!-- BEGIN SIDEBAR -->

    <div class="page-sidebar nav-collapse collapse">

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


            <li class="icon-table">
                <a href="/iotcloud">
                    <i class="sub-menu"></i>
                    <span class="title">仪表盘</span>
                    <span class="selected"></span>
                </a>
            </li>

            <li class="start active ">
                <a href="/iotcloud_news">
                    <i class="icon-home"></i>
                    <span class="title">行业资讯</span>
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

                <h3>Widget Settings</h3>

            </div>

            <div class="modal-body">

                Widget settings form goes here

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

                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->

                    <h3 class="page-title">

                        物联网云操作平台
                        <small>iot cloud</small>

                    </h3>

                    <ul class="breadcrumb">

                        <li>

                            <i class="icon-home"></i>

                            <a href="index.html">Home</a>

                            <i class="icon-angle-right"></i>

                        </li>

                        <li><a href="#">行业资讯</a></li>

                        <li class="pull-right no-text-shadow">

                            <div id="dashboard-report-range"
                                 class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive"
                                 data-tablet="" data-desktop="tooltips" data-placement="top"
                                 data-original-title="Change dashboard date range">

                                <i class="icon-calendar"></i>

                                <span></span>

                                <i class="icon-angle-down"></i>

                            </div>

                        </li>

                    </ul>

                    <!-- END PAGE TITLE & BREADCRUMB-->

                </div>

            </div>

            <!-- END PAGE HEADER-->

            <div id="dashboard">
                <!-- BEGIN DASHBOARD STATS -->
                <div class="row-fluid">
                    <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                        <div class="dashboard-stat blue">
                            <div class="visual">
                                <i class="icon-comments"></i>
                            </div>
                            <div class="details">
                                <div class="number"> ${pcount} </div>
                                <div class="desc"> 产品总数</div>
                            </div>
                            <a class="more" href="/product_infrom">
                                View more <i class="m-icon-swapright m-icon-white"></i>
                            </a>
                        </div>
                    </div>
                    <h3 class="page-title">
                        行 业 资 讯
                        <small>提供最新最全的行业资讯</small>
                    </h3>
                    <!-- END DASHBOARD STATS -->
                    <a class="more" href="http://www.lswz.gov.cn/">
                        国家粮食和物资储备局 <i class="m-icon-swapright m-icon-white"></i>
                    </a><br/>
                    <a class="more" href="http://36.33.35.42:8000/">
                        国家粮食交易中心 <i class="m-icon-swapright m-icon-white"></i>
                    </a><br/>
                    <a class="more" href="http://www.chinagrain.cn/">
                        中国粮油信息网 <i class="m-icon-swapright m-icon-white"></i>
                    </a><br/>
                    <a class="more" href="http://www.grainoil.com.cn/">
                        中国粮食信息网 <i class="m-icon-swapright m-icon-white"></i>
                    </a><br/>
                    <a class="more" href="http://lsj.hsxgw.gov.cn/">
                        国家粮食局 <i class="m-icon-swapright m-icon-white"></i>
                    </a><br/>


                </div>
            </div>
            <!-- END PAGE CONTAINER-->
        </div>
        <!-- END PAGE -->
    </div>

    <!-- END CONTAINER -->

    <!-- BEGIN FOOTER -->

    <div class="footer">

        <div class="footer-inner">
            2013 &copy; Metronic by keenthemes.Collect from <a href="http://www.cssmoban.com/" title="网站模板"
                                                               target="_blank">网站模板</a> - More Templates <a
                href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
        </div>
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
    <script src="../../js/jquery.vmap.js" type="text/javascript"></script>
    <script src="../../js/jquery.vmap.russia.js" type="text/javascript"></script>
    <script src="../../js/jquery.vmap.world.js" type="text/javascript"></script>
    <script src="../../js/jquery.vmap.europe.js" type="text/javascript"></script>
    <script src="../../js/jquery.vmap.germany.js" type="text/javascript"></script>
    <script src="../../js/jquery.vmap.usa.js" type="text/javascript"></script>
    <script src="../../js/jquery.vmap.sampledata.js" type="text/javascript"></script>
    <script src="../../js/jquery.flot.js" type="text/javascript"></script>
    <script src="../../js/jquery.flot.resize.js" type="text/javascript"></script>
    <script src="../../js/jquery.pulsate.min.js" type="text/javascript"></script>
    <script src="../../js/date.js" type="text/javascript"></script>
    <script src="../../js/daterangepicker.js" type="text/javascript"></script>
    <script src="../../js/jquery.gritter.js" type="text/javascript"></script>
    <script src="../../js/fullcalendar.min.js" type="text/javascript"></script>
    <script src="../../js/jquery.easy-pie-chart.js" type="text/javascript"></script>
    <script src="../../js/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="../../js/app.js" type="text/javascript"></script>
    <script src="../../js/index.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            App.init(); // initlayout and core plugins
            Index.init();
            Index.initJQVMAP(); // init index page's custom scripts
            Index.initCalendar(); // init index page's custom scripts
            Index.initCharts(); // init index page's custom scripts
            Index.initChat();
            Index.initMiniCharts();
            Index.initDashboardDaterange();
            Index.initIntro();
        });
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>