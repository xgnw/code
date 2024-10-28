$(function () {
    $.get("../../navbar.html", function (data) {
        $("#nav").html(data);
    });
    $.get("../../footer.html", function (data) {
        $("#footer").html(data);
    });
});

if (window.location.hostname.indexOf('tool.h234.cn')  != -1) {
    var base_url = "http://api.eemu.cn"
} else {
    var base_url = "http://localhost:5678"
}

var api = {
    douyin: "/analysis/watermark",
    rcode:"/translate?query="
}
