<%--
  Created by IntelliJ IDEA.
  User: lianyutao
  Date: 2017/8/25
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<jsp:include page="../base/base.jsp"/>--%>
<!-- head -->
<nav class="navbar mt_navbar" role="navigation">
    <div class="container">
        <div class="top_login text-right">
            <a href="#login_modal" data-toggle="modal">登陆</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#register_modal" data-toggle="modal">注册</a>
        </div>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="navbar-brand visible-xs">
                <img src="${imgPath}/resources/static/img/logo.png" alt="">
            </div>
        </div>
        <div class="collapse navbar-collapse text-center" id="bs-example-navbar-collapse">
            <ul class="nav navbar-nav top_navbar">
                <li id="index"><a href="${basePath}/index">首页</a></li>
                <li id="scenery"><a href="${basePath}/index">模块1</a></li>
                <li id="food"><a href="${basePath}/index">模块2</a></li>
                <li id="room"><a href="${basePath}/index">模块3</a></li>
                <li class="nav_logo hidden-xs"><a href="${basePath}/index">
                    <img src="${imgPath}/resources/static/img/logo.png" alt="">
                </a></li>
                <li id="visitor"><a href="${basePath}/index">模块4</a></li>
                <li id="ticket"><a href="${basePath}/index">模块5</a></li>
                <li id="news"><a href="${basePath}/index">模块6</a></li>
                <li id="help"><a href="${basePath}/index">模块7</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- login -->
<div class="modal fade form_modal login_modal" id="login_modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <form action="" method="post">
                    <div class="form-group">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="fa fa-fw fa-user"></i></span>
                            <input type="text" class="form-control" placeholder="用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
                            <input type="text" class="form-control" placeholder="密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="checkbox checkbox-inline">
                            <input type="checkbox"> 记住密码
                        </label>
                        <a href="" style="line-height: 38px" class="text-info pull-right">忘记密码？</a>
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-block btn-primary" value="登陆">
                    </div>
                    <p class="text-center">还没有账号？<a href="#register_modal" class="text-info" data-toggle="modal">马上注册</a></p>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- register -->
<div class="modal fade form_modal" id="register_modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <h4 class="text-center mb20">账号注册</h4>
                <form action="" method="post">
                    <div class="form-group">
                        <input  type="tel" class="form-control" placeholder="请输入手机号码" />
                    </div>
                    <div class="form-group">
                        <input  type="text" class="form-control" placeholder="请输入昵称" />
                    </div>
                    <div class="form-group">
                        <input  type="password" class="form-control" placeholder="请输入密码" />
                    </div>
                    <div class="form-group">
                        <input  type="password" class="form-control" placeholder="请输入确认密码" />
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-6">
                                <a ><img src="${imgPath}/resources/static/img/img_code.jpg" style="height: 34px;width: 100%" alt=""></a>
                            </div>
                            <div class="col-xs-6 no-padding-left">
                                <input type="text" class="form-control" placeholder="请输入验证码">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-6">
                                <a class="btn btn-block btn-primary">免费获取验证码</a>
                            </div>
                            <div class="col-xs-6 no-padding-left">
                                <input type="text" class="form-control" placeholder="请输入短信验证码">
                            </div>
                        </div>
                    </div>
                    <input type="submit" class="btn btn-block btn-primary" value="完成注册">
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /head -->