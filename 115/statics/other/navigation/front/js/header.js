function db_search() {
    var a = $("#searchText").val();
    if (null == a || "" == $.trim(a)) {
        return false
    }
    if ($(".btn-style-focus").length == 0) {
        var b = "https://www.baidu.com/baidu?wd=" + a;
        window.open(b, "_blank");
        return false
    }
    $(".btn-style-focus").each(function () {
        var c = $(this).attr("data-url");
        if (c.indexOf("GitNavi") >= 0) {
            c = c.replace("GitNavi", a)
        } else {
            c = c + a
        }
        setTimeout(function () {
            window.open(c, "_blank")
        }, 50)
    })
}


function narn (type) {
    naranja()[type]({
        title: '新消息提示',
        text: '新的导航 UPUPMO 已经正式上线，推荐使用新导航',
        timeout: 'keep',
        buttons: [{
            text: '跳转',
            click: function (e) {
                window.location.href="https://www.upupmo.com";
            }
        },{
            text: '取消',
            click: function (e) {
                e.closeNotification()
            }
        }]
    })
}

$(function () {
    narn('warn');
    $("body").iealert();
    var a = ["自定义导航背景、自定义搜索引擎上线啦", "GitNavi 支持注册，创造自己的导航，看页脚！"];
    $("#searchText").placeholderTypewriter({text: a});
    $("#searchText").bind("keypress", function (b) {
        if (b.keyCode == "13") {
            db_search()
        }
    });
    $("#searchBtn").click(function () {
        db_search()
    });
    $(".btn-style").click(function () {
        $(this).toggleClass("btn-style-focus")
    });
    $("#delText").click(function () {
        $("#searchText").val("")
    })
});
var _hmt = _hmt || [];
(function () {
    var b = document.createElement("script");
    b.src = "https://hm.baidu.com/hm.js?858dc941b2287d180d329481e38f07db";
    var a = document.getElementsByTagName("script")[0];
    a.parentNode.insertBefore(b, a)
})();
