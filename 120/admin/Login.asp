<!--#include file="conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
<table width="228" height="139" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
	<tr valign="top" bgcolor="#FFFFFF">
		<td>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="25" bgcolor="f3f3f3"> &nbsp;·&nbsp;管理登陆&nbsp;·</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr valign="top" bgcolor="#FFFFFF">
	<td height="107">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F3F3F3">
			<tr>
				<td height="103" align="center">
				<form method="post" action="check_login.asp?action=login" style="margin:0">
					<table width="100%"  border="0" cellspacing="0" cellpadding="4">
						<tr>
							<td width="29%" height="25" align="right">用户名：</td>
							<td width="71%" align="center"><input name="username" type="text" class="input"></td>
						</tr>
						<tr>
							<td height="25" align="right">密&nbsp; 码：</td>
							<td align="center"><input name="password" type="password" class="input"></td>
						</tr>
					</table>
					<br><input name="Submit" type="submit" class="button" value=" 提  交 ">
				</form></td></tr></table></tr></table><br>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
<tr><td align="center">| <% =count %>|&nbsp;&nbsp;<% =Copyright %>&nbsp;&nbsp;| <% =counts %>|</td></tr></table></body>
</html>