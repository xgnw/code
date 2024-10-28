function $(id) { return document.getElementById(id);}
    var login = document.getElementById("login");
    login.onclick = function(event) {
        $("mask").style.display = "block";
        $("show").style.display = "block";
        document.body.style.overflow = "hidden";  // 不显示滚动条
        //取消冒泡
        var event = event || window.event;
        if(event && event.stopPropagation)
        {
            event.stopPropagation();
        }
        else
        {
            event.cancelBubble = true;
        }
    }
    document.onclick = function(event) {

        var event = event || window.event;
        // alert(event.target.id);  // 返回的是点击的某个对象的id 名字
        // alert(event.srcElement.id);
        var targetId = event.target ? event.target.id : event.srcElement.id;
        // 看明白这个写法
        if(targetId == "mask")  // 不等于当前点点击的名字
        {
            $("mask").style.display = "none";
            $("show").style.display = "none";
            document.body.style.overflow = "visible"; // 显示滚动条
        }
    }










