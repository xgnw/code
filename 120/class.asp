<!--#include file="Conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��һQQ dyqq.cn QQ�����б�QQ��QQ�ũ�QQ���멦QQ���뽻������</title>
<META name="keywords" content="��һQQ dyqq QQ QQ�� QQ���� QQ���뽻������ 5λQQ���� 6λQQ���� 7λQQ���� 8λQQ���� 9λQQ����">
<META name="generator" content="��һQQ dyqq QQ QQ�� QQ���� QQ���뽻������ 5λQQ���� 6λQQ���� 7λQQ���� 8λQQ���� 9λQQ����">
<META name="description" content="��һQQ dyqq QQ QQ�� QQ���� QQ���뽻������ 5λQQ���� 6λQQ���� 7λQQ���� 8λQQ���� 9λQQ����">
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
If Request.Querystring("action")="DYQQ_baohu" then Sql="Select * from DYQQ where DYQQ_del = 0 and DYQQ_baohu = '��' and DYQQ_huiyuan = '��' and DYQQ_tuijian = 0 order by id asc"
mRs.open Sql,conn,1,1
If mRs.bof and mRs.eof then
	Response.Write"<script>alert('��ʱû�ж�Ӧ�ĺ������!');history.back();</Script>"
Else
	mRs.PageSize =50'ÿҳ��¼����
	iCount=mRs.RecordCount '��¼����
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
<td width="972" align="center">���г���QQ����Ϊ�ο͸��˳��۵�QQ����,��վ�����κα�֤,������ע��</td>
</tr></table>
<table align="center" border=1 cellspacing=0  width=972 bordercolorlight=#333333 bordercolordark=#efefef>
<tr bgcolor="#cccccc">
<td width="8%" height="29" bgcolor="f3f3f3" align="center">QQ��������</td>
<td width="8%" bgcolor="f3f3f3" align="center">����QQ����</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ����λ��</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ����۸�</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ�����Ա״̬</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ���뱣��״̬</td>
<td width="13%" bgcolor="f3f3f3" align="center">QQ����ȼ�</td>
<td width="3%" bgcolor="f3f3f3" align="center">����</td>
<td width="3%" bgcolor="f3f3f3" align="center">����</td>
<td width="3%" bgcolor="f3f3f3" align="center">����</td>
<td width="8%" bgcolor="f3f3f3" align="center">��ϵQQ����</td>
<td width="8%" bgcolor="f3f3f3" align="center">QQ������ϸ����</td>
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
	Response.Write"��ͨ"
Elseif mRs("DYQQ_haoma")<DYQQ_tuijian2 and mRs("DYQQ_haoma")>jipin then
	Response.Write"<font color=#FF0000>�Ƽ�</font>"
Elseif mRs("DYQQ_haoma")<jipin then
	Response.Write"<font color=#FF0000>��Ʒ</font>"
End if
%></td>
<td width="8%" align="center"><a href="qq.asp?id=<%=mRs("id")%>" target="_blank"><font color="#0099ff">
<%=mRs("DYQQ_haoma")%></font></a><%
if mRs("DYQQ_Click")>djs then
	Response.Write"<font color=#FF0000> ��</font>"
End if
%></td>
<td width="8%" align="center"><%=mRs("DYQQ_weishu")%></a></td>
<td width="8%" align="center"><%
if mRs("DYQQ_jiage")<> "0" or IsNull(mRs("DYQQ_jiage")) then
	Response.Write"<font color=#FF0000>"&mRs("DYQQ_jiage")&" Ԫ</font>"
Elseif mRs("DYQQ_jiage")="0" then
	Response.Write"<font color=#008080>�Զ�</font>"
End if
%> </td>
<td width="8%" align="center"><%
if mRs("DYQQ_huiyuan")<> "��" or IsNull(mRs("DYQQ_huiyuan")) then
	Response.Write"<img border='0' src='img/fhy.gif'>"
Elseif mRs("DYQQ_huiyuan")="��" then
	Response.Write"<img border='0' src='img/hy.gif'>"
End if
%> </td>
<td width="8%" align="center"><%
if mRs("DYQQ_baohu")<> "��" or IsNull(mRs("DYQQ_baohu")) then
	Response.Write"<font color=#FF0000>��</font>"
Elseif mRs("DYQQ_baohu")="��" then
	Response.Write"<font color=#0099ff>��</font>"
End if
%> </td>
<td width="13%" align="center"><img align="center" border="0" align="left" title='��QQ����Ϊ <%=mRs("DYQQ_dengji")%> ��' src="img/level<%=mRs("DYQQ_dengji")%>.gif"></td>
<td width="3%" align="center"><%
if mRs("DYQQ_hongzuan")<> "��" or IsNull(mRs("DYQQ_hongzuan")) then
	Response.Write"<img border='0' src='img/bzs.gif'>"
Elseif mRs("DYQQ_hongzuan")="��" then
	Response.Write"<img border='0' src='img/jewel.gif'>"
End if
%> </td>
<td width="3%" align="center">
<%
if mRs("DYQQ_huangzuan")<> "��" or IsNull(mRs("DYQQ_huangzuan")) then
	Response.Write"<img border='0' src='img/bzs.gif'>"
Elseif mRs("DYQQ_huangzuan")="��" then
	Response.Write"<img border='0' src='img/hz.gif'>"
End if
%> </td>
<td width="3%" align="center">
<%
if mRs("DYQQ_lanzuan")<> "��" or IsNull(mRs("DYQQ_lanzuan")) then
	Response.Write"<img border='0' src='img/bzs.gif'>"
Elseif mRs("DYQQ_lanzuan")="��" then
	Response.Write"<img border='0' src='img/lz.gif'>"
End if
%> </td>
<td width="8%" align="center"><a href="http://wpa.qq.com/msgrd?V=1&Uin=<%=mRs("DYQQ_lianxi")%>&Site=--����t��r��һQQ�q��s����--http://www.dyqq.cn&Menu=yes" target="_blank" title='��QQ��<%=mRs("DYQQ_lianxi")%>����QQ�Ự��Ϣ!'><%=mRs("DYQQ_lianxi")%></a></td>
  <td width="8%" align="center"><a href="qq.asp?id=<%=mRs("id")%>" target="_blank"><font color="#0099ff">�鿴��ϸ</font></a></td>
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
'������һҳ��һҳ����
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
Response.Write ("��ҳ " & vbCrLf)
Response.Write ("��һҳ " & vbCrLf)
Else
Response.Write("<A HREF=" & action & "?" & temp & "Page=1>��ҳ</A> " & vbCrLf)
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page-1) & ">��һҳ</A> " & vbCrLf)
End If
If page>=pagecount then
Response.Write ("��һҳ " & vbCrLf)
Response.Write ("βҳ " & vbCrLf)
Else
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page+1) & ">��һҳ</A> " & vbCrLf)
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & pagecount & ">βҳ</A> " & vbCrLf)
End If
Response.Write(" ҳ�Σ�" & page & "/" & pageCount & "ҳ" &  vbCrLf)
Response.Write(" ���� <span class=style>" & iCount & "</span> ��QQ�������ڱ�վ����" &  vbCrLf)
Response.Write(" ת��" & "<INPUT TYEP=TEXT NAME=page class=diyColor3 SIZE=1 Maxlength=5 VALUE=" & page & ">" & "ҳ"  & vbCrLf & "<INPUT type=submit style=""font-size: 9pt"" value=GO class=diyColor3>")
Response.Write("</TR></form>" & vbCrLf )
Response.Write("</table>" & vbCrLf )
End Sub
%>
</td></tr></table>
<!--#include file="links.asp"-->
<!--#include file="end.asp"-->