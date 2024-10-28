<!--#include file="Conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>第一QQ dyqq.cn QQ号码列表│QQ│QQ号│QQ号码│QQ号码交易中心</title>
<META name="keywords" content="第一QQ dyqq QQ QQ号 QQ号码 QQ号码交易中心 5位QQ号码 6位QQ号码 7位QQ号码 8位QQ号码 9位QQ号码">
<META name="generator" content="第一QQ dyqq QQ QQ号 QQ号码 QQ号码交易中心 5位QQ号码 6位QQ号码 7位QQ号码 8位QQ号码 9位QQ号码">
<META name="description" content="第一QQ dyqq QQ QQ号 QQ号码 QQ号码交易中心 5位QQ号码 6位QQ号码 7位QQ号码 8位QQ号码 9位QQ号码">
</head>
<!--#include file="top.asp"-->
<!--#include file="head.asp"-->
<table align="center" border=1 cellspacing=0  width=980 bordercolorlight=#333333 bordercolordark=#efefef>
<tr bgcolor="#FFFFFF">
<td width="980">		
<%
Set mRs=Server.CreateObject("adodb.recordSet")
If Request.Querystring("action")="DYQQ_jiage" then Sql="Select * from DYQQ where DYQQ_del = 0 and DYQQ_tuijian = 0 order by DYQQ_jiage desc"
If Request.Querystring("action")="DYQQ_haoma" then Sql="Select * from DYQQ where DYQQ_del = 0 and DYQQ_tuijian = 0 order by DYQQ_haoma asc"
If Request.Querystring("action")="DYQQ_dengji" then Sql="Select * from DYQQ where DYQQ_del = 0 and DYQQ_tuijian = 0 order by DYQQ_dengji desc"
If Request.Querystring("action")="DYQQ_Click" then Sql="Select * from DYQQ where DYQQ_del = 0 and DYQQ_tuijian = 0 order by DYQQ_Click desc"
If Request.Querystring("action")="DYQQ_weishu" then Sql="Select * from DYQQ where DYQQ_del = 0 and DYQQ_tuijian = 0 order by DYQQ_weishu asc"
If Request.Querystring("action")="DYQQ_baohu" then Sql="Select * from DYQQ where DYQQ_del = 0 and DYQQ_baohu = '无' and DYQQ_huiyuan = '否' and DYQQ_tuijian = 0 order by id asc"
mRs.open Sql,conn,1,1
If mRs.bof and mRs.eof then
	Response.Write"<script>alert('暂时没有对应的号码出售!');history.back();</Script>"
Else
	mRs.PageSize =50'每页记录条数
	iCount=mRs.RecordCount '记录总数
	iPageSize=mRs.PageSize
	maxpage=mRs.PageCount 
	page=request("page")
	If Not IsNumeric(page) or page="" then
	page=1
Else
	page=cint(page)
End If
	If page<1 then
		page=1
		ElseIf  page>maxpage then
		page=maxpage
	End If
	mRs.AbsolutePage=Page
	If page=maxpage then
		x=iCount-(maxpage-1)*iPageSize
	Else
		x=iPageSize
	End If
End If
%>
<table width="972"  border="0" cellpadding="3" cellspacing="1">
<tr>
<td width="972" align="center">下列出售QQ号码为游客个人出售的QQ号码,本站不作任何保证,请自行注意</td>
</tr></table>
<table align="center" border=1 cellspacing=0  width=972 bordercolorlight=#333333 bordercolordark=#efefef>
<tr bgcolor="#cccccc">
<td width="8%" height="29" bgcolor="f3f3f3" align="center">QQ号码性质</td>
<td width="8%" bgcolor="f3f3f3" align="center">出售QQ号码</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ号码位数</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ号码价格</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ号码会员状态</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ号码保护状态</td>
<td width="13%" bgcolor="f3f3f3" align="center">QQ号码等级</td>
<td width="3%" bgcolor="f3f3f3" align="center">红钻</td>
<td width="3%" bgcolor="f3f3f3" align="center">黄钻</td>
<td width="3%" bgcolor="f3f3f3" align="center">蓝钻</td>
<td width="8%" bgcolor="f3f3f3" align="center">联系QQ号码</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ号码详细资料</td>
</tr></table>
<%
i=1
for j=1 to mRs.pagesize
%>
<table align="center" border=1 cellspacing=0  width=972 bordercolorlight=#333333 bordercolordark=#efefef>
<tr onmouseover="javascript:this.bgColor='#F7F7F7';" onmouseout="javascript:this.bgColor='#FFFFFF';">
<td width="8%" height="25" align="center">
<%
if mRs("DYQQ_haoma")>DYQQ_tuijian2 then
	Response.Write"普通"
Elseif mRs("DYQQ_haoma")<DYQQ_tuijian2 and mRs("DYQQ_haoma")>jipin then
	Response.Write"<font color=#FF0000>推荐</font>"
Elseif mRs("DYQQ_haoma")<jipin then
	Response.Write"<font color=#FF0000>极品</font>"
End if
%></td>
<td width="8%" align="center"><a href="qq.asp?id=<%=mRs("id")%>" target="_blank"><font color="#0099ff">
<%=mRs("DYQQ_haoma")%></font></a><%
if mRs("DYQQ_Click")>djs then
	Response.Write"<font color=#FF0000> 热</font>"
End if
%></td>
<td width="8%" align="center"><%=mRs("DYQQ_weishu")%></a></td>
<td width="8%" align="center"><%
if mRs("DYQQ_jiage")<> "0" or IsNull(mRs("DYQQ_jiage")) then
	Response.Write"<font color=#FF0000>"&mRs("DYQQ_jiage")&" 元</font>"
Elseif mRs("DYQQ_jiage")="0" then
	Response.Write"<font color=#008080>自定</font>"
End if
%> </td>
<td width="8%" align="center"><%
if mRs("DYQQ_huiyuan")<> "是" or IsNull(mRs("DYQQ_huiyuan")) then
	Response.Write"<img border='0' src='img/fhy.gif'>"
Elseif mRs("DYQQ_huiyuan")="是" then
	Response.Write"<img border='0' src='img/hy.gif'>"
End if
%> </td>
<td width="8%" align="center"><%
if mRs("DYQQ_baohu")<> "有" or IsNull(mRs("DYQQ_baohu")) then
	Response.Write"<font color=#FF0000>无</font>"
Elseif mRs("DYQQ_baohu")="有" then
	Response.Write"<font color=#0099ff>有</font>"
End if
%> </td>
<td width="13%" align="center"><img align="center" border="0" align="left" title='此QQ号码为 <%=mRs("DYQQ_dengji")%> 级' src="img/level<%=mRs("DYQQ_dengji")%>.gif"></td>
<td width="3%" align="center"><%
if mRs("DYQQ_hongzuan")<> "是" or IsNull(mRs("DYQQ_hongzuan")) then
	Response.Write"<img border='0' src='img/bzs.gif'>"
Elseif mRs("DYQQ_hongzuan")="是" then
	Response.Write"<img border='0' src='img/jewel.gif'>"
End if
%> </td>
<td width="3%" align="center">
<%
if mRs("DYQQ_huangzuan")<> "是" or IsNull(mRs("DYQQ_huangzuan")) then
	Response.Write"<img border='0' src='img/bzs.gif'>"
Elseif mRs("DYQQ_huangzuan")="是" then
	Response.Write"<img border='0' src='img/hz.gif'>"
End if
%> </td>
<td width="3%" align="center">
<%
if mRs("DYQQ_lanzuan")<> "是" or IsNull(mRs("DYQQ_lanzuan")) then
	Response.Write"<img border='0' src='img/bzs.gif'>"
Elseif mRs("DYQQ_lanzuan")="是" then
	Response.Write"<img border='0' src='img/lz.gif'>"
End if
%> </td>
<td width="8%" align="center"><a href="http://wpa.qq.com/msgrd?V=1&Uin=<%=mRs("DYQQ_lianxi")%>&Site=--┼→╰☆╮第一QQ╭☆╯←┼--http://www.dyqq.cn&Menu=yes" target="_blank" title='给QQ：<%=mRs("DYQQ_lianxi")%>发送QQ会话消息!'><%=mRs("DYQQ_lianxi")%></a></td>
  <td width="8%" align="center"><a href="qq.asp?id=<%=mRs("id")%>" target="_blank"><font color="#0099ff">查看详细</font></a></td>
      </td>
	</tr>
</table>
<%
i=i+1
mRs.movenext
If mRs.eof then exit for
next
%>
<%
call PageControl(iCount,maxpage,page,"border=0 align=center","<p align=center>")
mRs.close
Set mRs=nothing
Sub PageControl(iCount,pagecount,page,table_style,font_style)
'生成上一页下一页链接
Dim query, a, x, temp
action = "http://" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("SCRIPT_NAME")
query = Split(Request.ServerVariables("QUERY_STRING"), "&")
For Each x In query
a = Split(x, "=")
If StrComp(a(0), "page", vbTextCompare) <> 0 Then
temp = temp & a(0) & "=" & a(1) & "&"
End If
Next
Response.Write("<table " & Table_style & ">" & vbCrLf )
Response.Write("<form method=get onsubmit=""document.location = '" & action & "?" & temp & "Page='+ this.page.value;return false;""><TR>" & vbCrLf )
Response.Write("<TD align=right>" & vbCrLf )
Response.Write(font_style & vbCrLf )
If page<=1 then
Response.Write ("首页 " & vbCrLf)
Response.Write ("上一页 " & vbCrLf)
Else
Response.Write("<A HREF=" & action & "?" & temp & "Page=1>首页</A> " & vbCrLf)
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page-1) & ">上一页</A> " & vbCrLf)
End If
If page>=pagecount then
Response.Write ("下一页 " & vbCrLf)
Response.Write ("尾页 " & vbCrLf)
Else
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page+1) & ">下一页</A> " & vbCrLf)
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & pagecount & ">尾页</A> " & vbCrLf)
End If
Response.Write(" 页次：" & page & "/" & pageCount & "页" &  vbCrLf)
Response.Write(" 共有 <span class=style>" & iCount & "</span> 个QQ号码正在本站出售" &  vbCrLf)
Response.Write(" 转到" & "<INPUT TYEP=TEXT NAME=page class=diyColor3 SIZE=1 Maxlength=5 VALUE=" & page & ">" & "页"  & vbCrLf & "<INPUT type=submit style=""font-size: 9pt"" value=GO class=diyColor3>")
Response.Write("</TR></form>" & vbCrLf )
Response.Write("</table>" & vbCrLf )
End Sub
%>
</td></tr></table>
<!--#include file="links.asp"-->
<!--#include file="end.asp"-->