<!--#include file="check.asp"-->
<%
'����
dim DYQQ_tuijian
If Request.QueryString("action")="DYQQ_tuijian" then
	Set mRs=Server.CreateObject("ADODB.RecordSet")
	Sql="Select * from DYQQ"
	If request("DYQQ_tuijian")="0" then
	mRs.open "update DYQQ Set DYQQ_tuijian='1' where id="&request.QueryString("id"),conn,1,3
Else
	mRs.open "update DYQQ Set DYQQ_tuijian='0' where id="&request.QueryString("id"),conn,1,3
	Set mRs=nothing
	End If
	Response.Write "<script>alert('�޸ĳɹ�');this.location.href='huishou.asp';</SCRIPT>"
End If
%>
<%
'����
dim DYQQ_del
If Request.QueryString("action")="DYQQ_del" then
	Set mRs=Server.CreateObject("ADODB.RecordSet")
	Sql="Select * from DYQQ"
	If request("DYQQ_del")="0" then
	mRs.open "update DYQQ Set DYQQ_del='1' where id="&request.QueryString("id"),conn,1,3
Else
	mRs.open "update DYQQ Set DYQQ_del='0' where id="&request.QueryString("id"),conn,1,3
	Set mRs=nothing
	End If
	Response.Write "<script>alert('�ָ��ɹ�');this.location.href='huishou.asp';</SCRIPT>"
End If
%>
<%
'ɾ��
If Request.QueryString("action")="DYQQ_del2" then
	id=cint(trim(request("id")))
	Sql="DYQQ_delete * from DYQQ where id="&id
	conn.execute(Sql)
	Set mRs=nothing
	Response.Write "<script>alert('ɾ���ɹ���');this.location.href='huishou.asp';</SCRIPT>"
End If
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; chamRset=gb2312">
<title><% =Title %> - ����QQ�б�</title>
<style type="text/css">
body,td,th {
	font-size: 12px;
	color: #666666;
}
.input {
	font-size: 12px;
	border: 1px solid #CCCCCC;
	background-color: #FFFFFF;
	width: 130px;
}
.style {
	font-size: 12px;
	color: #FF6600;
}
a:link {
	color: #666666;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #666666;
}
a:hover {
	text-decoration: none;
	color: #FF6600;
	border-bottom-width: 1px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: dashed;
	border-bottom-color: #FF6600;
}.line {
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: dashed;
	border-left-style: none;
	border-bottom-color: #CCCCCC;
	border-bottom-width: 1px;
	font-size: 12px;
}
.button {
	border: 1px solid #CCCCCC;
	font-size: 12px;
	background-color: #FFFFFF;
}
</style>
</head>
<body>
<table border="0" align="center" cellpadding="2" cellspacing="1" width="700" bgcolor="#CCCCCC">
	<tr>
		<td valign="top" bgcolor="#FFFFFF">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td height="25" bgcolor="f3f3f3">
					<p align="center">&nbsp;��&nbsp;����վ&nbsp;��<%
Set mRs=Server.CreateObject("adodb.recordSet")
Sql="Select * from DYQQ where DYQQ_del = 1 order by id desc"
	mRs.open Sql,conn,1,1
If mRs.bof and mRs.eof then
	Response.Write "û���κμ�¼"
Else
	Response.Write "Ŀǰ��<span class=style>"&cstr(mRs.recordcount)&"</span>��QQ����"
	mRs.PageSize =20'ÿҳ��¼����
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
ElseIf	page>maxpage then
	page=maxpage
End If
	mRs.AbsolutePage=Page
If page=maxpage then
	x=iCount-(maxpage-1)*iPageSize
Else
	x=iPageSize
End If
%></td>
				</tr>
			</table>
	</tr>
	<tr>
		<td valign="top" bgcolor="#FFFFFF">
			<table border="0" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC" width="100%">
				<tr bgcolor="f3f3f3" align="center">
					<td width="8%">����QQ��</td>
					<td width="8%">����QQ��</td>
					<td width="8%" bgcolor="f3f3f3" align="center">�۸�</td>
					<td width="6%" bgcolor="f3f3f3" align="center">��Ա</td>
					<td width="6%" bgcolor="f3f3f3" align="center">����</td>
					<td width="18%" bgcolor="f3f3f3" align="center">�ȼ�</td>
					<td width="5%" bgcolor="f3f3f3" align="center">����</td>
					<td width="5%" bgcolor="f3f3f3" align="center">����</td>
					<td width="5%" bgcolor="f3f3f3" align="center">����</td>
					<td width="13%">�� ��</td>
					<td width="5%">�鿴</td>
					<td width="10%">����</td>
				</tr>
			</table>
<%
i=1
for j=1 to mRs.pagesize
%>
			<table border="0" cellpadding="0" cellspacing="0" width="697" class="line">
				<tr onmouseover="javascript:this.bgColor='#F7F7F7';" onmouseout="javascript:this.bgColor='#FFFFFF';">
					<td width="8%" align="center"><%=mRs("DYQQ_haoma")%></td>
					<td width="8%" align="center"><%=mRs("DYQQ_lianxi")%></td>
					<td width="8%" align="center"><%
					if trim(mRs("DYQQ_jiage"))<> "0" or IsNull(mRs("DYQQ_jiage")) then
						Response.Write"<font color=#FF0000>"&mRs("DYQQ_jiage")&" Ԫ</font>"
					Elseif mRs("DYQQ_jiage")="0" then
						Response.Write"<font color=#008080>�Զ�</font>"
					End if
					%> </td>
					<td width="6%" align="center"><%
					if trim(mRs("DYQQ_huiyuan"))<> "��" or IsNull(mRs("DYQQ_huiyuan")) then
						Response.Write"<img border='0' src='../img/fhy.gif'>"
					Elseif mRs("DYQQ_huiyuan")="��" then
						Response.Write"<img border='0' src='../img/hy.gif'>"
					End if
					%> </td>
					<td width="6%" align="center"><%
					if trim(mRs("DYQQ_baohu"))<> "��" or IsNull(mRs("DYQQ_baohu")) then
						Response.Write"<font color=#FF0000>��</font>"
					Elseif mRs("DYQQ_baohu")="��" then
						Response.Write"<font color=#0099ff>��</font>"
					End if
					%> </td>
					<td width="18%" align="center"><img border="0" src="../img/level<%=mRs("DYQQ_dengji")%>.gif"></td>
					<td width="5%" align="center"><%
					if trim(mRs("DYQQ_hongzuan"))<> "��" or IsNull(mRs("DYQQ_hongzuan")) then
						Response.Write"<img border='0' src='../img/bzs.gif'>"
					Elseif mRs("DYQQ_hongzuan")="��" then
						Response.Write"<img border='0' src='../img/jewel.gif'>"
					End if
					%> </td>
					<td width="5%" align="center">
					<%
					if trim(mRs("DYQQ_huangzuan"))<> "��" or IsNull(mRs("DYQQ_huangzuan")) then
						Response.Write"<img border='0' src='../img/bzs.gif'>"
					Elseif mRs("DYQQ_huangzuan")="��" then
						Response.Write"<img border='0' src='../img/hz.gif'>"
					End if
					%> </td>
					<td width="5%" align="center">
					<%
					if trim(mRs("DYQQ_lanzuan"))<> "��" or IsNull(mRs("DYQQ_lanzuan")) then
						Response.Write"<img border='0' src='../img/bzs.gif'>"
					Elseif mRs("DYQQ_lanzuan")="��" then
						Response.Write"<img border='0' src='../img/lz.gif'>"
					End if
					%> </td>
					<td align="center" width="13%"><a href="haoma.asp?action=DYQQ_tuijian&id=<%=mRs("id")%>&DYQQ_tuijian=<%=mRs("DYQQ_tuijian")%>"><% If mRs("DYQQ_tuijian")=1 then %>
	                  <font color="#0099ff">��Ϊ���˳���</font><% Else %>
	                  <font class=style>��Ϊ��վ����</font></a><% End If %></a>
	                </td>
	                <td width="5%" align="center"><a href="../qq.asp?id=<%=mRs("id")%>" target="_blank">�鿴</a></td>
					<td width="10%" align="center"><a href="xiugai.asp?action=edit&ID=<%=mRs("ID")%>">�޸�</a>
					<a href="huishou.asp?action=DYQQ_del2&id=<%=mRs("id")%>">ɾ��</a></td>
				</tr>
			</table>
			</form>
<%
i=i+1
mRs.movenext
If mRs.eof then exit for
next
%>
<%
call PageControl(iCount,maxpage,page,"border=0 align=center","<p align=center>")
End If
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
Response.Write("<form method=get onsubmit=""document.location = '" & action & "?" & temp & "Page='+ this.page.value;return false;""><tr>" & vbCrLf )
Response.Write("<td align=right>" & vbCrLf )
Response.Write(font_style & vbCrLf )
If page<=1 then
Response.Write ("��ҳ " & vbCrLf)
Response.Write ("��һҳ " & vbCrLf)
Else
Response.Write("<a href=" & action & "?" & temp & "Page=1>��ҳ</A> " & vbCrLf)
Response.Write("<a href=" & action & "?" & temp & "Page=" & (Page-1) & ">��һҳ</a> " & vbCrLf)
End If
If page>=pagecount then
Response.Write ("��һҳ " & vbCrLf)
Response.Write ("βҳ " & vbCrLf)
Else
Response.Write("<a href=" & action & "?" & temp & "Page=" & (Page+1) & ">��һҳ</a> " & vbCrLf)
Response.Write("<a href=" & action & "?" & temp & "Page=" & pagecount & ">βҳ</a> " & vbCrLf)
End If
Response.Write(" ҳ�Σ�" & page & "/" & pageCount & "ҳ" &  vbCrLf)
Response.Write(" ����" & iCount & "����¼" &  vbCrLf)
Response.Write(" ת��" & "<input tyep=text NAME=page class=diyColor3 SIZE=1 Maxlength=5 VALUE=" & page & ">" & "ҳ"  & vbCrLf & "<INPUT type=submit style=""font-size: 9pt"" value=GO class=diyColor3>")
Response.Write("</tr></form>" & vbCrLf )
Response.Write("</table>" & vbCrLf )
End Sub
%>
	</tr>
</table>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
	<tr>
		<td align="center"><% =Copyright %></td>
	</tr>
</table>
</body>
</html>