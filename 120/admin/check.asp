<!--#include file="conn.asp" -->
<!--#include file="../inc/Md5.asp"-->
<%
'验证是否登陆
If session("username")="" then
    Response.Write "<script>alert('登陆超时，请重新登陆！');this.location.href='Login.asp';</SCRIPT>"
	Response.End
End If
%>