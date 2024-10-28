<!--#include file="Conn.asp"-->
<%
'添加qq号
If Request.Querystring("action")="add" then
dim DYQQ_haoma,DYQQ_lianxi,DYQQ_mail,DYQQ_dengji,DYQQ_weishu,DYQQ_chongwu,DYQQ_huiyuan,DYQQ_baohu,DYQQ_jiage,DYQQ_hongzuan,DYQQ_huangzuan,DYQQ_lanzuan,DYQQ_cwdengji,DYQQ_jieshao
	DYQQ_haoma=htmlencode(request.form("DYQQ_haoma"))
	DYQQ_lianxi=htmlencode(request.form("DYQQ_lianxi"))
	DYQQ_mail=htmlencode(request.form("DYQQ_mail"))
	DYQQ_dengji=htmlencode(request.form("DYQQ_dengji"))
	DYQQ_weishu=htmlencode(request.form("DYQQ_weishu"))
	DYQQ_chongwu=htmlencode(request.form("DYQQ_chongwu"))
	DYQQ_huiyuan=htmlencode(request.form("DYQQ_huiyuan"))
	DYQQ_baohu=htmlencode(request.form("DYQQ_baohu"))
	DYQQ_jiage=htmlencode(request.form("DYQQ_jiage"))
	DYQQ_time=htmlencode(request.form("DYQQ_time"))
	DYQQ_hongzuan=htmlencode(request.form("DYQQ_hongzuan"))
	DYQQ_huangzuan=htmlencode(request.form("DYQQ_huangzuan"))
	DYQQ_lanzuan=htmlencode(request.form("DYQQ_lanzuan"))
	DYQQ_cwdengji=htmlencode(request.form("DYQQ_cwdengji"))
	DYQQ_jieshao=htmlencode(request.form("DYQQ_jieshao"))
If DYQQ_haoma="" or DYQQ_lianxi="" or DYQQ_dengji="" or DYQQ_jiage="" or DYQQ_cwdengji="" or DYQQ_mail="" or DYQQ_jieshao="" or DYQQ_weishu="" then
	Response.Write "<script>alert('请填写完整，否则无法提交！');history.back();</SCRIPT>"
ElseIf not (isNumeric(DYQQ_haoma)) then
    Response.Write "<script>alert('QQ号码只能为数字！');history.back();</SCRIPT>"
ElseIf not (isNumeric(DYQQ_lianxi)) then
    Response.Write "<script>alert('联系QQ不正确！');history.back();</SCRIPT>"
ElseIf not (isNumeric(DYQQ_dengji)) then
    Response.Write "<script>alert('QQ等级错误！');history.back();</SCRIPT>"
ElseIf not (isNumeric(DYQQ_jiage)) then
    Response.Write "<script>alert('出售价格为非法数！');history.back();</SCRIPT>"
ElseIf DYQQ_haoma>700000000 or DYQQ_haoma<30001 then
	Response.Write "<script>alert('请输入正确的QQ号码!小于30000和大过700000000的号码我们不接受');history.back();</Script>"
ElseIf DYQQ_dengji>32 or DYQQ_dengji<0 then
	Response.Write "<script>alert('QQ等级不可以大过32或小于0');history.back();</SCRIPT>"
ElseIf DYQQ_cwdengji>32 or DYQQ_cwdengji<0 then
	Response.Write "<script>alert('如果你的QQ宠物等级大过32，请填写32，我们目前最高只支持32级');history.back();</SCRIPT>"
ElseIf DYQQ_lianxi>700000000 or DYQQ_lianxi<10000 then
	Response.Write "<script>alert('请输入正确的联系人QQ号码!大过700000000的号码我们视为没诚意!所以不接受申请');history.back();</Script>"
ElseIf len(DYQQ_jieshao)>300 then
    Response.Write "<script>alert('卖主说明字符超过限制');history.back();</Script>"
ElseIf len(DYQQ_jiage)>5 or len(DYQQ_jiage)<0 then
	Response.Write "<script>alert('对不起，请输入5位以内的价格，如果价格不定，请输入数字0');history.back();</Script>"
Else
Set mRs= Server.CreateObject("adodb.recordSet")
Sql="Select* from DYQQ where DYQQ_haoma="&DYQQ_haoma
mRs.open Sql,conn,1,3
If not (mRs.eof and mRs.bof) then
	Response.Write"<script>alert('这个QQ号码正在出售中，请不要重复提交！');history.back();</SCRIPT>"
Else
	mRs.addnew
	mRs("DYQQ_haoma")= DYQQ_haoma
	mRs("DYQQ_lianxi")= DYQQ_lianxi
	mRs("DYQQ_weishu")= DYQQ_weishu
	mRs("DYQQ_mail")= DYQQ_mail
	mRs("DYQQ_dengji")= DYQQ_dengji
	mRs("DYQQ_chongwu")= DYQQ_chongwu
	mRs("DYQQ_huiyuan")= DYQQ_huiyuan
	mRs("DYQQ_baohu")= DYQQ_baohu
	mRs("DYQQ_hongzuan")= DYQQ_hongzuan
	mRs("DYQQ_huangzuan")= DYQQ_huangzuan
	mRs("DYQQ_lanzuan")= DYQQ_lanzuan
	mRs("DYQQ_cwdengji")= DYQQ_cwdengji
	mRs("DYQQ_time")= now()
	mRs("DYQQ_jiage")= DYQQ_jiage
	mRs("DYQQ_jieshao")= DYQQ_jieshao
	mRs.update
	Response.Write"<script>alert('提交完成！');this.location.href='index.asp';</SCRIPT>"
End If
mRs.close
Set mRs=nothing
End If
conn.close
Set conn=nothing
End If
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>第一QQ dyqq.cn 出售登记│QQ│QQ号│QQ号码│QQ号码交易中心</title>
<META name="keywords" content="第一QQ dyqq QQ QQ号 QQ号码 QQ号码交易中心 5位QQ号码 6位QQ号码 7位QQ号码 8位QQ号码 9位QQ号码">
<META name="generator" content="第一QQ dyqq QQ QQ号 QQ号码 QQ号码交易中心 5位QQ号码 6位QQ号码 7位QQ号码 8位QQ号码 9位QQ号码">
<META name="description" content="第一QQ dyqq QQ QQ号 QQ号码 QQ号码交易中心 5位QQ号码 6位QQ号码 7位QQ号码 8位QQ号码 9位QQ号码">
</head>
<!--#include file="top.asp"-->		
<table align="center" border=1 cellspacing=0  width=980 bordercolorlight=#333333 bordercolordark=#efefef>
<tr bgcolor="#FFFFFF"><td width="50%">
<form name="form1" method="post" action="add.asp?action=add" style="margin:0">
<table border="1" width="100%" bordercolorlight="#C0C0C0" cellspacing="0" bordercolordark="#FFFFFF">
<tr>
<td width="16%" align="right">出售QQ号码：<font color="#FF0000">*</font></div></td>
<td width="35%"><input name="DYQQ_haoma" type="text" class="input"> </td>
<td>你想卖掉的QQ号码</td></tr><tr>
<td align="right">QQ号码等级：<font color="#FF0000">*</font></td>
<td><input name="DYQQ_dengji" type="text" class="input"></td>
<td>出售的QQ等级为多少，只能是<font color="#FF0000">1</font>--<font color="#FF0000">32</font>之间的数字,如果没有等级请输入<font color="#FF0000">0</font></td>
</tr><tr>
<td align="right">联系QQ号码：<font color="#FF0000">*</font></td>
<td><input name="DYQQ_lianxi" type="text" class="input"> </td>
<td>可以联系到您的QQ号</td></tr><tr>
<td align="right">QQ号码位数：<font color="#FF0000">*</font></td>
<td><input name="DYQQ_weishu" type="text" class="input"></td>
<td>出售的QQ号码位数，只能是<font color="#FF0000">5</font>--<font color="#FF0000">9</font>之间的数字</td>
</tr>
<tr>
<td align="right">联系邮箱：<font color="#FF0000">*</font></td>
<td><input name="DYQQ_mail" type="text" class="input"> </td>
<td>可以联系到您的邮箱</td>
</tr>
<tr>
<td align="right">出售价格：<font color="#FF0000">*</font></td>
<td><input name="DYQQ_jiage" type="text" class="input">   元</td>
<td>出售价格(只能为整数,否则将整取),如果想买方<font color="#008080">自定</font>,请输入<font color="#FF0000">0</font></td>
</tr>
<tr>
<td align="right">宠物等级：<font color="#FF0000">*</font></td>
<td>
<input name="DYQQ_cwdengji" type="text" class="input" value="0"></td>
<td>出售的QQ带有宠物等级为多少，没有等级请使用默认的<font color="#FF0000">0</font></td>
</tr>
<tr>
<td align="right">是否会员：<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_huiyuan='否';
document.write ('<input type="radio" name="DYQQ_huiyuan" value="否" ');
if (DYQQ_huiyuan=='否')
{
document.write (' checked');
}
document.write ('> 否');
document.write (' <input type="radio" name="DYQQ_huiyuan" value="是" ');
if (DYQQ_huiyuan=='是')
{
document.write (' checked');
}
document.write ('> 是');
//-->
</SCRIPT></td><td>请根据出售的QQ状态选择</td>
</tr><tr>
<td align="right">是否红钻：<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_hongzuan='否';
document.write ('<input type="radio" name="DYQQ_hongzuan" value="否" ');
if (DYQQ_hongzuan=='否')
{
document.write (' checked');
}
document.write ('> 否');
document.write (' <input type="radio" name="DYQQ_hongzuan" value="是" ');
if (DYQQ_hongzuan=='是')
{
document.write (' checked');
}
document.write ('> 是');
//-->
</SCRIPT></td><td>请根据出售的QQ状态选择</td>
</tr><tr>
<td align="right">是否黄钻：<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_huangzuan='否';
document.write ('<input type="radio" name="DYQQ_huangzuan" value="否" ');
if (DYQQ_huangzuan=='否')
{
document.write (' checked');
}
document.write ('> 否');
document.write (' <input type="radio" name="DYQQ_huangzuan" value="是" ');
if (DYQQ_huangzuan=='是')
{
document.write (' checked');
}
document.write ('> 是');
//-->
</SCRIPT></td><td>请根据出售的QQ状态选择</td>
</tr><tr>
<td align="right">是否蓝钻：<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_lanzuan='否';
document.write ('<input type="radio" name="DYQQ_lanzuan" value="否" ');
if (DYQQ_lanzuan=='否')
{
document.write (' checked');
}
document.write ('> 否');
document.write (' <input type="radio" name="DYQQ_lanzuan" value="是" ');
if (DYQQ_lanzuan=='是')
{
document.write (' checked');
}
document.write ('> 是');
//-->
</SCRIPT></td><td>请根据出售的QQ状态选择</td>
</tr><tr>
<td align="right">有无保护：<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_baohu='无';
document.write ('<input type="radio" name="DYQQ_baohu" value="无" ');
if (DYQQ_baohu=='无')
{
document.write (' checked');
}
document.write ('> 无');
document.write (' <input type="radio" name="DYQQ_baohu" value="有" ');
if (DYQQ_baohu=='有')
{
document.write (' checked');
}
document.write ('> 有');
//-->
</SCRIPT></td><td>请根据出售的QQ状态选择</td>
</tr><tr>
<td align="right">是否带宠物：<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_chongwu='无';
document.write ('<input type="radio" name="DYQQ_chongwu" value="无" ');
if (DYQQ_chongwu=='无')
{
document.write (' checked');
}
document.write ('> 无');
document.write (' <input type="radio" name="DYQQ_chongwu" value="有" ');
if (DYQQ_chongwu=='有')
{
document.write (' checked');
}
document.write ('> 有');
//-->
</SCRIPT></td><td>请根据出售的QQ状态选择</td></tr>
<td align="right">卖主说明：<font color="#FF0000">*</font></td><td>
<textarea rows="7" name="DYQQ_jieshao" cols="35"></textarea></td>
<td>如有其他说明可以在这里填写,仅限300字符以内</td>
</tr><tr><td colspan="2"><div align="center">
<input name="Submit" type="submit" class="button" value="提交">
</div></td>
<td>以上带<font color="#FF0000">*</font>为必填项，请确认所有资料填写完整后按提交开始出售</td>
</tr></table></form></td></tr></table>
<!--#include file="links.asp"-->
<!--#include file="end.asp"-->