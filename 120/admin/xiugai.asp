<!--#include file="check.asp"-->
<%if request("Type") = "edit" then
%>
<%
	dim DYQQ_haoma
	dim DYQQ_lianxi
	dim DYQQ_huiyuan
	dim DYQQ_baohu
	dim DYQQ_hongzuan
	dim DYQQ_huangzuan
	dim DYQQ_lanzuan
	dim DYQQ_jiage
	dim DYQQ_dengji
	dim DYQQ_cwdengji
	dim DYQQ_chongwu
	dim DYQQ_jieshao
	dim sql
	dim rs
	dim founderr

	DYQQ_haoma=trim(request("DYQQ_haoma"))
	DYQQ_lianxi=trim(request("DYQQ_lianxi"))
	DYQQ_huiyuan=trim(request("DYQQ_huiyuan"))
	DYQQ_baohu=trim(request("DYQQ_baohu"))
	DYQQ_hongzuan=trim(request("DYQQ_hongzuan"))
	DYQQ_huangzuan=trim(request("DYQQ_huangzuan"))
	DYQQ_lanzuan=trim(request("DYQQ_lanzuan"))
	DYQQ_chongwu=trim(request("DYQQ_chongwu"))
	DYQQ_cwdengji=trim(request("DYQQ_cwdengji"))
	DYQQ_jieshao=htmlencode(request.form("DYQQ_jieshao"))
	DYQQ_jiage=trim(request("DYQQ_jiage"))
	DYQQ_dengji=trim(request("DYQQ_dengji"))
	set rs=server.createobject("adodb.recordset")
	sql="select * from DYQQ where id="&request("id")
	rs.open sql,conn,1,2
	rs("DYQQ_haoma")=DYQQ_haoma
	rs("DYQQ_lianxi")=DYQQ_lianxi
	rs("DYQQ_huiyuan")=DYQQ_huiyuan
	rs("DYQQ_dengji")=DYQQ_dengji
	rs("DYQQ_baohu")=DYQQ_baohu
	rs("DYQQ_hongzuan")=DYQQ_hongzuan
	rs("DYQQ_huangzuan")=DYQQ_huangzuan
	rs("DYQQ_lanzuan")=DYQQ_lanzuan
	rs("DYQQ_chongwu")=DYQQ_chongwu
	rs("DYQQ_cwdengji")=DYQQ_cwdengji
	rs("DYQQ_jieshao")=DYQQ_jieshao
	rs("DYQQ_jiage")=DYQQ_jiage
	rs.update
	Response.Write"<script>alert('�ύ��ɣ�');this.location.href='geren.asp';</SCRIPT>"
End If	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><% =Title %> - �޸�����</title>
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
<%
if request("action") = "edit" then
%>
<%sql="select * from DYQQ where ID = "&request("ID")
set rs = conn.execute(sql)
%>
<script language="JavaScript" srs="../Mymodify.js"></script>		
<table width="770" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#CCCCCC">
	<tr bgcolor="#FFFFFF">
		<td width="214">
		<form name="form1" method="post" action="xiugai.asp?Type=edit&ID=<%=rs("ID")%>" style="margin:0">
			<table border="1" width="760" bordersolorlight="#C0C0C0" cellspacing="0" bordersolordark="#FFFFFF">
				<tr>
					<td width="16%" align="right">����QQ��</div></td>
					<td width="35%"><input name="DYQQ_haoma" type="text" class="input" value="<%=rs("DYQQ_haoma")%>" maxlength="9"> </td>
				</tr>
				<tr>
					<td align="right">��ϵQQ��</td>
					<td><input name="DYQQ_lianxi" type="text" class="input" value="<%=rs("DYQQ_lianxi")%>" maxlength="9"> </td>
				</tr>
				<tr>
					<td align="right">�Ƿ��Ա��</td><td class=tablebody1>
			<%if rs("DYQQ_huiyuan") = "��" then 
			  response.write("<input name=DYQQ_huiyuan type=checkbox id=DYQQ_huiyuan value=�� checked>")
			  else
			  response.write("<input name=DYQQ_huiyuan type=checkbox id=DYQQ_huiyuan value=��>")
			  end if
			  %></td>
				</tr>
				<tr>
					<td align="right">���ޱ�����</td><td class=tablebody1>
           <%if rs("DYQQ_baohu") = "��" then 
			  response.write("<input name=DYQQ_baohu type=checkbox id=DYQQ_baohu value=�� checked>")
			  else
			  response.write("<input name=DYQQ_baohu type=checkbox id=DYQQ_baohu value=��>")
			  end if
			  %></td>
				</tr>
				<tr>
					<td align="right">�Ƿ���꣺</td><td class=tablebody1>
              <%if rs("DYQQ_hongzuan") = "��" then 
			  response.write("<input name=DYQQ_hongzuan type=checkbox id=DYQQ_hongzuan value=�� checked>")
			  else
			  response.write("<input name=DYQQ_hongzuan type=checkbox id=DYQQ_hongzuan value=��>")
			  end if
			  %></td>
				</tr>
				<tr>
					<td align="right">�Ƿ���꣺</td><td class=tablebody1>
              <%if rs("DYQQ_huangzuan") = "��" then 
			  response.write("<input name=DYQQ_huangzuan type=checkbox id=DYQQ_huangzuan value=�� checked>")
			  else
			  response.write("<input name=DYQQ_huangzuan type=checkbox id=DYQQ_huangzuan value=��>")
			  end if
			  %></td>
				</tr>
				<tr>
					<td align="right">�Ƿ����꣺</td><td class=tablebody1>
              <%if rs("DYQQ_lanzuan") = "��" then 
			  response.write("<input name=DYQQ_lanzuan type=checkbox id=DYQQ_lanzuan value=�� checked>")
			  else
			  response.write("<input name=DYQQ_lanzuan type=checkbox id=DYQQ_lanzuan value=��>")
			  end if
			  %></td>
				</tr>
				
				<tr>
					<td align="right">���޳��</td>
					<td class=tablebody1>
              <%if rs("DYQQ_chongwu") = "��" then 
			  response.write("<input name=DYQQ_chongwu type=checkbox id=DYQQ_chongwu value=�� checked>")
			  else
			  response.write("<input name=DYQQ_chongwu type=checkbox id=DYQQ_chongwu value=��>")
			  end if
			  %></td>
               
				</tr>
				<tr>
					<td align="right">����ȼ���</td>
					<td><input name="DYQQ_cwdengji" type="text" value="<%=rs("DYQQ_cwdengji")%>" size="5" maxlength="2"></td>
				</tr>
				<tr>
					<td align="right">QQ�ȼ���</td>
					<td><input name="DYQQ_dengji" type="text" value="<%=rs("DYQQ_dengji")%>" size="5" maxlength="2"></td>
				</tr>
				<tr>
					<td align="right">���ۼ۸�</td>
					<td><input name="DYQQ_jiage" type="text" value="<%=rs("DYQQ_jiage")%>" size="9" maxlength="7">Ԫ  </td>
				</tr>
				<tr>
					<td align="right">����˵����</td>
					<td>
					<textarea rows="7" name="DYQQ_jieshao" cols="35"><%=UHTMLEncode(rs("DYQQ_jieshao"))%></textarea></td>
				</tr>
				<tr>
					<td></td>
					<td><input name="Submit" type="submit" class="button" value="�ύ"></td>
				</tr>
			</table>
			
		</form>
	</td>
	</tr>
</table>
<%end if%>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
	<tr>
		<td align="center"><% =Copyright %></td>
	</tr>
</table>
</body>
</html>