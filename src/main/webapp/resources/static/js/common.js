//类json格式转换为json
function parseJSON(d){
    if(navigator.userAgent.indexOf("MSIE")>0) {
        d=eval('(' + d + ')');
    }else{
        d=$.parseJSON(d);
    }
    return d;
}
//post提交数据
$(document).on('click', '.ajax-post', function(event) {
    var target,query,form;
    var target_form = $(this).attr('target-form');
    var that = this;
    var nead_confirm=false;
    if( ($(this).attr('type')=='submit') || (target = $(this).attr('href')) || (target = $(this).attr('url')) ){
        form = $('.'+target_form);

        if ($(this).attr('hide-data') === 'true'){//无数据时也可以使用的功能
            form = $('.hide-data');
            query = form.serialize();
        }else if (form.get(0)==undefined){
            return false;
        }else if ( form.get(0).nodeName=='FORM' ){
            if ( $(this).hasClass('confirm') ) {
                if(!confirm('确认要执行该操作吗?')){
                    return false;
                }
            }
            if($(this).attr('url') !== undefined){
                target = $(this).attr('url');
            }else{
                target = form.get(0).action;
            }
            query = form.serialize();
        }else if( form.get(0).nodeName=='INPUT' || form.get(0).nodeName=='SELECT' || form.get(0).nodeName=='TEXTAREA') {
            form.each(function(k,v){
                if(v.type=='checkbox' && v.checked==true){
                    nead_confirm = true;
                }
            })
            if ( nead_confirm && $(this).hasClass('confirm') ) {
                if(!confirm('确认要执行该操作吗?')){
                    return false;
                }
            }
            query = form.serialize();
        }else{
            if ( $(this).hasClass('confirm') ) {
                if(!confirm('确认要执行该操作吗?')){
                    return false;
                }
            }
            query = form.find('input,select,textarea').serialize();
        }
        $(that).addClass('disabled').attr('autocomplete','off').prop('disabled',true);
        $.post(target,query).success(function(data){
            if (data.status==1) {
                if (data.url) {
                    updateAlert(data.info + ' 页面即将自动跳转~','alert-success');
                }else{
                    updateAlert(data.info ,'alert-success');
                }
                setTimeout(function(){
                    if (data.url) {
                        location.href=data.url;
                    }else if( $(that).hasClass('no-refresh')){
                        $('#top-alert').find('button').click();
                        $(that).removeClass('disabled').prop('disabled',false);
                    }else{
                        location.reload();
                    }
                },1500);
            }else{
                updateAlert(data.info);
                setTimeout(function(){
                    if (data.url) {
                        location.href=data.url;
                    }else{
                        $('#top-alert').find('button').click();
                        $(that).removeClass('disabled').prop('disabled',false);
                    }
                },1500);
            }
        }).error(function() {
            updateAlert('网络错误');
        });;
    }
    return false;
});
/**顶部警告栏*/
var alert_tpl=$('#alert_template').html();
//提示后不关闭提示
window.updateAlert = function (text,c) {
    text = text||'default';
    c = c||'alert-danger';
    var t=_.template(alert_tpl,{c:c,text:text})
    $('#top-alert').html(t);
};
//提示后关闭提示
window.dialogAlert = function (text,c) {
    text = text||'default';
    c = c||'alert-danger';
    var t=_.template(alert_tpl,{c:c,text:text})
    $('#top-alert').html(t);
    setTimeout(function(){
        $('#top-alert').find('button').click();
    },1500);
};