

/*开关灯--开始*/
var switchGo=document.getElementById("switchGo");
var i=-1;
switchGo.onclick=function(){
    i++;
    if(i==0)
    {
        document.body.style.background="#000";
        this.value="开灯";
    }
    if(i==1)
    {
        document.body.style.background="#fff";
        this.value="关灯";
        i=-1;
    }
}
/*开关灯--结束*/

var inputs=document.getElementById("inputs");
var buttons=document.getElementById("buttons");
buttons.onclick=function(){
    document.body.style.background=inputs.value;
}


/*这里是渐变部分的实现--开始*/
var linearBgc=document.getElementById("linear-bgc");
var linearBgc1=document.getElementById("linear-bgc1");
var btnLinearBgc=document.getElementById("btn-linear-bgc");
var linearDeg=document.getElementById("linear-deg");

var h4s=document.getElementsByTagName("h4");

btnLinearBgc.onclick=function(){
var color=linearBgc.value;
var color1=linearBgc1.value;

var numberDeg=linearDeg.value;
console.log(numberDeg);
boxColor(numberDeg,color,color1);

}

function boxColor(numberDeg,color,color1){
for(var i=0;i<h4s.length;i++)
{
    if(numberDeg=="")
        h4s[i].parentNode.style.background="linear-gradient("+color+","+color1+")";
    else
        h4s[i].parentNode.style.background="linear-gradient("+numberDeg+"deg"+","+color+","+color1+")";
}
}
/*这里是渐变部分的实现---结束*/