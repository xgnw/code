<!--#include file="conn.asp" -->
<!--#include file="../inc/Md5.asp"-->
<%
'��֤�Ƿ��½
If session("username")="" then
    Response.Write "<script>alert('��½��ʱ�������µ�½��');this.location.href='Login.asp';</SCRIPT>"
	Response.End
End If
%>