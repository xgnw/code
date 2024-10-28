
function searchFn() {

    let sname = $("#sname").val()
    if (sname == "" || sname == null) {
        return layer.msg('请输入要搜索的中文名称');
    }

    $('.rcode-cont').html("");
    $.ajax({
        url: 'http://api.eemu.cn/translate?query=' + sname, 
        type: 'post',
        headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Accept-Token': 'aE4fB4tA0fH0kD6c',
            'User-Time': Date.parse(new Date().toString()),
        },
        data: {},
        timeout: '5000', //超时时间，单位毫秒
        dataType: 'json', //预期服务器返回的数据类型，xml,html,script,json,jsonp,text
        success: function (res) {
            if (res.code == 200) {
                let html = ''
                $.each(res.data, function (key, comment) {
                    html += `<div class="title"><div class="title-icon"><div class="icon-dark"></div><div class="icon-light"></div><div class="icon-light"></div></div>${key}</div><div class="row">`     
                    for (let keys in comment){
                        html += `<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-12"><div class="card" onclick="copyCont('${comment[keys]}')"><div class="card-body"><div class="cont-name">${keys}</div><div class="cont-value">${comment[keys]}</div></div></div></div>`
                    }
                    html += `</div>`
                });
                $('.rcode-cont').html(html);
            } else {
                layer.msg(res.msg);
            }
        },
        error: function (err) {
            layer.msg('请求失败');
        },
        global: true //是否触发全局ajax事件，默认true
    })

}
function copyCont(val){
    navigator.clipboard.writeText(val);
    layer.msg('复制成功');

}

function empty() {
    $("#sname").val("")
    $('.rcode-cont').html("");
}










eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)d[e(c)]=k[c]||e(c);k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('5 6="2://7.4.0";1.3("博客："+6);',62,8,'cn|console|https|log|luyuz|var|websiteUrl|www'.split('|'),0,{}))
