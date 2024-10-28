<!--#include file="check.asp"-->
<%
'添加管理员
dim username,password
If Request.QueryString("action")="Admin_Add" then
	username=request.form("username")
	password=request.form("password")
	If username="" or password="" then
		Response.Write "<script>alert('管理员用户名或者密码不能为空！');this.location.href='Mopass.asp?action=Admin_add';</SCRIPT>"
		Response.End
	End If
	If len(password)<6 then
		Response.Write "<script>alert('密码不要小于6个字符！;');this.location.href='Mopass.asp?action=Admin_add';</SCRIPT>"
		Response.End
	End If
	If request("password")<>request("password1") then
		Response.Write "<script>alert('两次密码不一致！');this.location.href='Mopass.asp?action=Admin_add';</SCRIPT>"
		Response.End
	End If
	Set mRs=Server.CreateObject("adodb.recordSet")
	Sql="Select * from A_admin"
	mRs.open Sql,conn,1,3
	mRs.addnew
	mRs("username")=trim(request("username"))
	mRs("password")=md5(request("password"))
	mRs.update
	mRs.close
	Set mRs=nothing
	Response.Write "<script>alert('管理员添加成功！');this.location.href='Mopass.asp?action=Admin_list';</SCRIPT>"
End If
%>

<%
'修改管理员
If Request.QueryString("action")="Admin_Modify" then
	username=request.form("username")
	password=request.form("password")
		If username="" or password="" then
			Response.Write "<script>alert('管理员用户名或者密码不能为空！');this.location.href='Mopass.asp?action=Admin_list';</SCRIPT>"
			Response.End
		End If
		If len(password)<6 then
			Response.Write "<script>alert('密码不要小于6个字符！;');this.location.href='Mopass.asp?action=Admin_list';</SCRIPT>"
			Response.End
		End If
		If request("password")<>request("password1") then
			Response.Write "<script>alert('两次密码不一致！');this.location.href='Mopass.asp?action=Admin_list';</SCRIPT>"
			Response.End
		End If
	Id=request("Id")
	Set mRs=Server.CreateObject("adodb.recordSet")
	Sql="Select * from A_admin where Id="&Id
	mRs.open Sql,conn,1,3
	mRs("username")=request("username")
	mRs("password")=md5(request("password"))
	mRs.update
	mRs.close
	Set mRs=nothing
	session("username")=""
	Response.Write "<script>alert('修改成功，请重新登陆！');this.location.href='login.asp';</SCRIPT>"
	End If
%>

<%
'删除管理员
If Request.QueryString("action")="Admin_DYQQ_del" then
	Id=cint(trim(request("Id")))
	Sql="DYQQ_delete * from A_admin where Id="&Id
	conn.execute(Sql)
	Set mRs=nothing
	Response.Write "<script>alert('管理员删除成功！');this.location.href='?action=Admin_list';</SCRIPT>"
End If
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; chamRset=gb2312">
<title><% =Title %></title>
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
		<td  align="center">
<% If Request.QueryString("action")="Admin_add" then %>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
<form action="Mopass.asp?action=Admin_Add" method="post" style="margin:0" onSubmit="return doCheck();">
	<tr>
		<td height="33">添加管理员：</td>
		<td>名称：</td>
		<td><input name="username" type="text" class="input"></td>
		<td>密码：</td>
		<td><input name="password" type="password" class="input"></td>
		<td>确认密码：</td>
		<td><input name="password1" type="password" class="input"></td>
		<td><input name="Submit3" type="submit" value=" 添 加 " class="button"></td>
	</tr>
</form>
		</td>
	</tr>
</table>
</table>
<% End If %>
<%
If Request.QueryString("action")="Admin_modify" then
id=cint(trim(request("id")))
Set mRs=Server.CreateObject("adodb.recordSet")
Sql="Select * from A_admin where Id="&Id
mRs.open Sql,conn,1,1
%>
<form action="Mopass.asp?id=<% =request.QueryString("id") %>&action=Admin_Modify" method="post" style="margin:0">
<table border="0" align="center" cellpadding="2" cellspacing="1" width="700" bgcolor="#CCCCCC">
	<tr>
		<td valign="top" bgcolor="#FFFFFF">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td height="33">修改管理员：</td>
		<td>名称：</td>
		<td><input name="username" type="text" class="input" value="<% =mRs("username") %>">
		<input name="id" type="hidden" value="<% =request("id") %>"></td>
		<td>密码：</td>
		<td><input name="password" type="password" class="input"></td>
		<td>确认密码：</td>
		<td><input name="password1" type="password" class="input"></td>
		<td><input name="Submit3" type="submit" value=" 修 改 " class="button"></td>
	</tr>
</table>
		</td>
	</tr>
</table>
</form>
<% End If %>
<%
If Request.QueryString("action")="Admin_list" then
Set mRs=Server.CreateObject("adodb.recordSet")
Sql="Select * from A_admin"
mRs.open Sql,conn,1,1
%>
<table border="0" align="center" cellpadding="2" cellspacing="1" width="700" bgcolor="#CCCCCC">
	<tr>
		<td valign="top" bgcolor="#FFFFFF">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr align="center">
		<td width="13%" height="25">ID</td>
		<td width="40%">管理员名称</td>
		<td colspan="2">操作</td>
	</tr>
<% do while not mRs.eof %>
	<tr onmouseover="javascript:this.bgColor='#F7F7F7';" onmouseout="javascript:this.bgColor='#F3F3F3';" align="center">
		<td height="25"><% =mRs("Id") %></td>
		<td><% =mRs("username") %></td>
		<td width="10%"><a href="Mopass.asp?action=Admin_modify&id=<% =mRs("Id") %>">修改密码</a></td>
		<td width="10%"><a href="Mopass.asp?id=<% =mRs("Id") %>&action=Admin_DYQQ_del">删除管理</a></td>
	</tr>
<%
mRs.movenext
loop
%>
</table>
<% End If %>
		</td>
	</tr>
</table>
		</td>
	</tr>
</table>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
	<tr>
		<td align="center"><% =Copyright %></td>
	</tr>
</table>
</body>
</html>