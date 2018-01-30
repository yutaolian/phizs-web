<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Phizs-web</title>
    <jsp:include page="base/base.jsp"/>
</head>
<body>
<jsp:include page="common/head.jsp"/>
<script>
    $(function () {
        $("#index").attr("class","active")
    });
</script>
<%--body模块--%>
<!-- body -->
<div class="swiper-container index_banner">
    <div class="swiper-wrapper">
        <div class="swiper-slide"><a href="javascript:;" style="background-image: url('${imgPath}/resources/static/img/index/banner.jpg')"></a></div>
        <div class="swiper-slide"><a href="javascript:;" style="background-image: url('${imgPath}/resources/static/img/index/banner.jpg')"></a></div>
    </div>
    <div class="swiper-pagination"></div>
</div>

<div class="container">
    <div class="row mb20">
        <div class="col-md-3">
            <div class="head_title">
                <h4>模块</h4>
            </div>
            <a href="">
                <img src="" alt="图片">
            </a>
        </div>
        <div class="col-md-6">
            <div class="head_title">
                <h4>新闻 <a href="${basePath}/news" class="pull-right font14"><small>更多 》</small></a></h4>
            </div>
            <ul class="index_news">
            </ul>
        </div>
        <div class="col-md-3">
            <div class="index_menu_list">
                <a class="font18" href="https://github.com/yutaolian">Github</a>
                <a style="background-image: url('${imgPath}/resources/static/img/index_menu1.jpg');" class="font18" href="http://yutaolian.github.io/">博客</a>
                <a style="background-image: url('${imgPath}/resources/static/img/index_menu2.jpg');" class="font14" href="tel:0516-83309120">QQ：675376983</a>
            </div>
        </div>
    </div>
</div>


<!-- /body -->
<jsp:include page="common/footer.jsp"/>
</body>
<!-- /js -->
<script type="text/javascript">
    var swiper = new Swiper('.index_banner', {
        direction:"horizontal",
        loop:true,
        autoplay:5000,
        paginationClickable:true,
        pagination: '.swiper-pagination',
    });
    var swiper2 = new Swiper('.meishi_swiper', {
        slidesPerView: 3,
        spaceBetween: 30,
        slidesPerGroup: 3,
        loop: true,
        loopFillGroupWithBlank: true,
        paginationClickable:true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        }
    });
</script>
</html>
