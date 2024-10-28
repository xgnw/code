<!--#include file="Conn.asp"-->
<%
sql="select * from DYQQ where ID = "&request("ID")
set rs = conn.execute(sql)
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>第一QQ dyqq.cn QQ号码<%=rs("DYQQ_haoma")%>出售详细资料│QQ│QQ号│QQ号码│QQ号码交易中心</title>
<META name="keywords" content="第一QQ dyqq QQ QQ号 QQ号码 QQ号码交易中心 5位QQ号码 6位QQ号码 7位QQ号码 8位QQ号码 9位QQ号码">
<META name="generator" content="第一QQ dyqq QQ QQ号 QQ号码 QQ号码交易中心 5位QQ号码 6位QQ号码 7位QQ号码 8位QQ号码 9位QQ号码">
<META name="description" content="第一QQ dyqq QQ QQ号 QQ号码 QQ号码交易中心 5位QQ号码 6位QQ号码 7位QQ号码 8位QQ号码 9位QQ号码">
</head>
<!--#include file="top.asp"-->
<!--#include file="head.asp"-->
<script language="JavaScript" src="Mymodify.js"></script>
<table align="center" border=1 cellspacing=0  width=980 bordercolorlight=#333333 bordercolordark=#efefef>
<tr>
		<td>
<table width="972"  border="0" cellpadding="3" cellspacing="1">
<tr>
<td width="972" align="center">下列出售QQ号码为游客个人出售的QQ号码,本站不作任何保证,请自行注意</td>
</tr></table>
			<table border="1" width="972" bordercolorlight="#C0C0C0" cellspacing="0" bordercolordark="#FFFFFF">
<tr><td width="111" height="25" align="right">QQ号码：</td><td width="461"><%=rs("DYQQ_haoma")%></td>
<td width="159" rowspan="13" align="center"><div align="center"><img src=http://qqshow-user.tencent.com/<%=rs("DYQQ_haoma")%>/10/00/></div></td>
</tr>
<tr><td width="111" height="25" align="right">号码位数：</td><td width="461">
<%
if rs("DYQQ_weishu")="5" then
	Response.Write"<font color=#FF0000>5 位数</font>"
Elseif rs("DYQQ_weishu")="6" then
	Response.Write"<font color=#0000FF>6 位数</font>"
Elseif rs("DYQQ_weishu")="7" then
	Response.Write"<font color=#FF33FF>7 位数</font>"
Elseif rs("DYQQ_weishu")="8" then
	Response.Write"<font color=#3399CC>8 位数</font>"
Elseif rs("DYQQ_weishu")="9" then
	Response.Write"9 位数"
End if
%>
</td>
</tr>
<tr>
<td width="111" height="25" align="right">号码状态：</div></td><td width="461"><%
if rs("DYQQ_tuijian")= "" or IsNull(rs("DYQQ_tuijian")) then
	Response.Write"未知"
Elseif rs("DYQQ_tuijian")="0" then
	Response.Write"<font color=#0099ff>个人出售</font>"
Elseif rs("DYQQ_tuijian")="1" then
	Response.Write"<font color=#FF0000>本站出售</font>   『 <font color=#FF0000>官</font> 』"
End if
%>
<%
if rs("DYQQ_hongzuan")<> "是" or IsNull(rs("DYQQ_hongzuan")) then
	Response.Write"<font color=#CCCCCC></font>"
Elseif rs("DYQQ_hongzuan")="是" then
	Response.Write"  <img border='0' src='img/jewel.gif'>"
End if
%>
<%
if rs("DYQQ_huangzuan")<> "是" or IsNull(rs("DYQQ_huangzuan")) then
	Response.Write"<font color=#CCCCCC></font>"
Elseif rs("DYQQ_huangzuan")="是" then
	Response.Write"  <img border='0' src='img/hz.gif'>"
End if
%>
<%
if rs("DYQQ_lanzuan")<> "是" or IsNull(rs("DYQQ_lanzuan")) then
	Response.Write"<font color=#CCCCCC></font>"
Elseif rs("DYQQ_lanzuan")="是" then
	Response.Write"  <img border='0' src='img/lz.gif'>"
End if
%><%
if rs("DYQQ_haoma")>DYQQ_tuijian2 then
	Response.Write" 普通"
Elseif rs("DYQQ_haoma")<DYQQ_tuijian2 and rs("DYQQ_haoma")>jipin then
	Response.Write"<font color=#FF0000> 推荐</font>"
Elseif rs("DYQQ_haoma")<jipin then
	Response.Write"<font color=#FF0000> 极品</font>"
End if
%><%
if rs("DYQQ_Click")>djs then
	Response.Write"<font color=#FF0000> 热门号码</font>"
End if
%>
</td></tr><tr><td width="111" height="25" align="right">联系人QQ：</div></td>
<td width="461"><%=rs("DYQQ_lianxi")%>&nbsp;&nbsp;&nbsp;<a target=blank href=tencent://message/?uin=<%=rs("DYQQ_lianxi")%>&Site=--┼→╰☆╮第一QQ╭☆╯←┼--http://www.dyqq.cn&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:<%=rs("DYQQ_lianxi")%>:5 alt="给QQ：<%=rs("DYQQ_lianxi")%>发送QQ会话消息"></a>&nbsp;&nbsp;&nbsp;与对方联系</td>
</tr>
<tr><td width="111" height="25" align="right">联系人电子邮箱：</div></td>
<td width="111" height="25" align="right"><a href="mailto:<%=rs("DYQQ_mail")%>?subject=我想了解你在第一QQ(http://www.dyqq.cn)网站上出售的QQ号码：<%=rs("DYQQ_haoma")%>的详细信息&body=*请配合填写以下信息回复给我：%0A是否会员：%0A有无密保：%0A开通什么业务：%0A是否携带宠物：%0A宠物等级：%0A请在此处填写此号码的详细介绍：" target="_blank" title='给出售此QQ的卖家：<%=rs("DYQQ_mail")%>发送电子邮件!'><%=rs("DYQQ_mail")%></a></td>
</tr>
<tr><td width="111" height="25" align="right">是否会员：</div></td><td width="461">
<%
if rs("DYQQ_huiyuan")<>"是" or IsNull(rs("DYQQ_huiyuan")) then
	Response.Write"<font color=#0099ff>否</font>"
Elseif rs("DYQQ_huiyuan")="是" then
	Response.Write"<font color=#FF0000>是</font>"
End if
%>
<%
if rs("DYQQ_huiyuan")<> "是" or IsNull(rs("DYQQ_huiyuan")) then
	Response.Write" <img border='0' src='img/fhy.gif'>"
Elseif rs("DYQQ_huiyuan")="是" then
	Response.Write" <img border='0' src='img/hy.gif'>"
End if
%> </td>
</tr><tr><td width="111" height="25" align="right">有无保护：</div></td>
<td width="461"><%
if rs("DYQQ_baohu")<>"有" or IsNull(rs("DYQQ_baohu")) then
	Response.Write"<font color=#FF0000>无</font>"
Elseif rs("DYQQ_baohu")="有" then
	Response.Write"<font color=#0099ff>有</font>"
End if
%>&nbsp;&nbsp;&nbsp;
<a target="_blank" href="http://service.qq.com/psw/mo.shtml?psw_cs.htm">
<font color="#800000">点击进入验证</font></a></td>
</tr><tr><td width="111" height="25" align="right">出售时间：</div></td><td width="461"><%=rs("DYQQ_time")%></td>
</tr><tr><td width="111" height="25" align="right">宠物状态：</div></td><td width="461"> <%
if rs("DYQQ_chongwu")<>"有" or IsNull(rs("DYQQ_chongwu")) then
	Response.Write"<font color=#0099ff>无宠物</font>"
Elseif rs("DYQQ_chongwu")="有" then
	Response.Write"<font color=#FF0000>带有宠物</font>  宠物等级:<img border='0' title='此QQ号码所带宠物为 "&rs("DYQQ_cwdengji")&" 级' src='img/level"&rs("DYQQ_cwdengji")&".gif'>"
End if
%></td></tr><tr><td width="111" height="25" align="right">QQ等级：</td>
<td width="461"><img border="0" title='此QQ号码为 <%=rs("DYQQ_dengji")%> 级' src="img/level<%=rs("DYQQ_dengji")%>.gif"></td>
</tr><tr><td width="111" height="25" align="right">出售价格：</td><td width="461"> <%
if rs("DYQQ_jiage")<> "0" or IsNull(rs("DYQQ_jiage")) then
	Response.Write"<font color=#FF0000>"&rs("DYQQ_jiage")&"元</font>"
Elseif rs("DYQQ_jiage")="0" then
	Response.Write"<font color=#008080>自定</font>"
End if
%></td></tr><tr><td width="111" height="25" align="right">查看次数：</td>
<td width="461"><script src='Click.asp?ID=<%=rs("id")%>'></script>次</td></tr>
<tr><td width="111" align="right" height="42">卖主说明：</td>
<td width="461" height="42"><%=rs("DYQQ_jieshao")%>
</td></tr><tr><td align="right" colspan="3">
<p align="left"><font color="#FF0000">本站声明：<BR>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
请各位注意，本站为非商业网站，在各位买卖过程中本站没有得到任何的好处，对于非<font color="#FF0000">本站人员</font>出售的QQ我们不作任何担保，无论发生任何的意外均与本站无关。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
希望大家注意买卖过程中程序，提防某些不良份子。<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如何识别站内人员或站外人员？<p align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 答：在出售状态中显示有&nbsp;<font color="#FF0000">本站出售</font>&nbsp;字样和带有&nbsp;<font color="#FF0000">官</font>&nbsp;字的都是本站内部人员出售的QQ，本站对其交易信誉进行100%保证,如有问题本站绝对负责。</td>
</tr></table></td></tr></table>
<!--#include file="links.asp"-->
<!--#include file="end.asp"-->