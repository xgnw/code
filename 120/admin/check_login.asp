<!--#include file="conn.asp" -->
<!--#include file="../inc/Md5.asp"-->
<%
If Request.QueryString("action")="login" then
dim sql,mRs,username,password
username=replace(trim(request("username")),"'","")
password=replace(trim(Request("password")),"'","")
If username="" then
	FoundErr=True
	Response.Redirect "login.asp"
	Response.End
End If
If password="" then
	FoundErr=True
	Response.Redirect "login.asp"
	Response.End
End If
If FoundErr<>True then
	password=Md5(password)
	set mRs=server.createobject("adodb.recordset")
	sql="select * from A_admin where username='"&username&"'and password='"&password&"'"
	mRs.open sql,conn,1,1
	If not(mRs.eof and mRs.bof) then
		session("username")=mRs("username")
		response.Redirect"admin_index.asp"
	else
		Response.Write "<script>alert('�ʺŻ��������');this.location.href='login.asp';</SCRIPT>"
	End If
	End If
End If
%>
<%
'�˳�
If Request.QueryString("action")="Quit" then
	session("username")=""
	Response.Write "<script>alert('�Ѱ�ȫ�˳���');this.location.href='login.asp';</SCRIPT>"
End If
%>