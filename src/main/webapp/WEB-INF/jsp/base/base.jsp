<%--
  Created by IntelliJ IDEA.
  User: lianyutao
  Date: 2017/8/25
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--取本地文件--%>
<c:set var="basePath" scope="request">${pageContext.request.contextPath}</c:set>
<%--静态资源--%>
<%--<c:set var="jsPath" scope="request" value="oss_url"/>--%>
<%--<c:set var="cssPath" scope="request" value="oss_url"/>--%>
<%--<c:set var="fontsPath" scope="request" value="oss_url"/>--%>
<%--<c:set var="imgPath" scope="request" value="oss_url"/>--%>
<%--<c:set var="staticImgPath" scope="request" value="oss_url"/>--%>
<%--<c:set var="videoPath" scope="request" value="oss_url"/>--%>

<c:set var="jsPath" scope="request">${basePath}</c:set>
<c:set var="cssPath" scope="request" >${basePath}</c:set>
<c:set var="imgPath" scope="request">${basePath}</c:set>
<c:set var="fontsPath" scope="request">${basePath}</c:set>
<c:set var="uploadImgPath" scope="request" >${basePath}</c:set>

<%--jquery--%>
<script type="text/javascript"  src="${jsPath }/resources/static/js/jquery.min.js"></script>
<%--bootstrap--%>
<script type="text/javascript"  src="${jsPath }/resources/static/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="${cssPath }/resources/static/css/bootstrap.min.css">
<%--字体图标--%>
<link rel="stylesheet" type="text/css" href="${cssPath}/resources/static/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${cssPath }/resources/static/css/reset.css">
<link rel="stylesheet" type="text/css" href="${cssPath }/resources/static/css/swiper.min.css">

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" media="screen"/>
<meta charset="UTF-8">
<!--[if lt IE 9]>
<script type="text/javascript">alert("您的IE浏览器版本较低,建议您升级到IE9以上或更换浏览器访问。");</script>
<![endif]-->
