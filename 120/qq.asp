<!--#include file="Conn.asp"-->
<%
sql="select * from DYQQ where ID = "&request("ID")
set rs = conn.execute(sql)
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��һQQ dyqq.cn QQ����<%=rs("DYQQ_haoma")%>������ϸ���ϩ�QQ��QQ�ũ�QQ���멦QQ���뽻������</title>
<META name="keywords" content="��һQQ dyqq QQ QQ�� QQ���� QQ���뽻������ 5λQQ���� 6λQQ���� 7λQQ���� 8λQQ���� 9λQQ����">
<META name="generator" content="��һQQ dyqq QQ QQ�� QQ���� QQ���뽻������ 5λQQ���� 6λQQ���� 7λQQ���� 8λQQ���� 9λQQ����">
<META name="description" content="��һQQ dyqq QQ QQ�� QQ���� QQ���뽻������ 5λQQ���� 6λQQ���� 7λQQ���� 8λQQ���� 9λQQ����">
</head>
<!--#include file="top.asp"-->
<!--#include file="head.asp"-->
<script language="JavaScript" src="Mymodify.js"></script>
<table align="center" border=1 cellspacing=0  width=980 bordercolorlight=#333333 bordercolordark=#efefef>
<tr>
		<td>
<table width="972"  border="0" cellpadding="3" cellspacing="1">
<tr>
<td width="972" align="center">���г���QQ����Ϊ�ο͸��˳��۵�QQ����,��վ�����κα�֤,������ע��</td>
</tr></table>
			<table border="1" width="972" bordercolorlight="#C0C0C0" cellspacing="0" bordercolordark="#FFFFFF">
<tr><td width="111" height="25" align="right">QQ���룺</td><td width="461"><%=rs("DYQQ_haoma")%></td>
<td width="159" rowspan="13" align="center"><div align="center"><img src=http://qqshow-user.tencent.com/<%=rs("DYQQ_haoma")%>/10/00/></div></td>
</tr>
<tr><td width="111" height="25" align="right">����λ����</td><td width="461">
<%
if rs("DYQQ_weishu")="5" then
	Response.Write"<font color=#FF0000>5 λ��</font>"
Elseif rs("DYQQ_weishu")="6" then
	Response.Write"<font color=#0000FF>6 λ��</font>"
Elseif rs("DYQQ_weishu")="7" then
	Response.Write"<font color=#FF33FF>7 λ��</font>"
Elseif rs("DYQQ_weishu")="8" then
	Response.Write"<font color=#3399CC>8 λ��</font>"
Elseif rs("DYQQ_weishu")="9" then
	Response.Write"9 λ��"
End if
%>
</td>
</tr>
<tr>
<td width="111" height="25" align="right">����״̬��</div></td><td width="461"><%
if rs("DYQQ_tuijian")= "" or IsNull(rs("DYQQ_tuijian")) then
	Response.Write"δ֪"
Elseif rs("DYQQ_tuijian")="0" then
	Response.Write"<font color=#0099ff>���˳���</font>"
Elseif rs("DYQQ_tuijian")="1" then
	Response.Write"<font color=#FF0000>��վ����</font>   �� <font color=#FF0000>��</font> ��"
End if
%>
<%
if rs("DYQQ_hongzuan")<> "��" or IsNull(rs("DYQQ_hongzuan")) then
	Response.Write"<font color=#CCCCCC></font>"
Elseif rs("DYQQ_hongzuan")="��" then
	Response.Write"  <img border='0' src='img/jewel.gif'>"
End if
%>
<%
if rs("DYQQ_huangzuan")<> "��" or IsNull(rs("DYQQ_huangzuan")) then
	Response.Write"<font color=#CCCCCC></font>"
Elseif rs("DYQQ_huangzuan")="��" then
	Response.Write"  <img border='0' src='img/hz.gif'>"
End if
%>
<%
if rs("DYQQ_lanzuan")<> "��" or IsNull(rs("DYQQ_lanzuan")) then
	Response.Write"<font color=#CCCCCC></font>"
Elseif rs("DYQQ_lanzuan")="��" then
	Response.Write"  <img border='0' src='img/lz.gif'>"
End if
%><%
if rs("DYQQ_haoma")>DYQQ_tuijian2 then
	Response.Write" ��ͨ"
Elseif rs("DYQQ_haoma")<DYQQ_tuijian2 and rs("DYQQ_haoma")>jipin then
	Response.Write"<font color=#FF0000> �Ƽ�</font>"
Elseif rs("DYQQ_haoma")<jipin then
	Response.Write"<font color=#FF0000> ��Ʒ</font>"
End if
%><%
if rs("DYQQ_Click")>djs then
	Response.Write"<font color=#FF0000> ���ź���</font>"
End if
%>
</td></tr><tr><td width="111" height="25" align="right">��ϵ��QQ��</div></td>
<td width="461"><%=rs("DYQQ_lianxi")%>&nbsp;&nbsp;&nbsp;<a target=blank href=tencent://message/?uin=<%=rs("DYQQ_lianxi")%>&Site=--����t��r��һQQ�q��s����--http://www.dyqq.cn&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:<%=rs("DYQQ_lianxi")%>:5 alt="��QQ��<%=rs("DYQQ_lianxi")%>����QQ�Ự��Ϣ"></a>&nbsp;&nbsp;&nbsp;��Է���ϵ</td>
</tr>
<tr><td width="111" height="25" align="right">��ϵ�˵������䣺</div></td>
<td width="111" height="25" align="right"><a href="mailto:<%=rs("DYQQ_mail")%>?subject=�����˽����ڵ�һQQ(http://www.dyqq.cn)��վ�ϳ��۵�QQ���룺<%=rs("DYQQ_haoma")%>����ϸ��Ϣ&body=*�������д������Ϣ�ظ����ң�%0A�Ƿ��Ա��%0A�����ܱ���%0A��ͨʲôҵ��%0A�Ƿ�Я�����%0A����ȼ���%0A���ڴ˴���д�˺������ϸ���ܣ�" target="_blank" title='�����۴�QQ�����ң�<%=rs("DYQQ_mail")%>���͵����ʼ�!'><%=rs("DYQQ_mail")%></a></td>
</tr>
<tr><td width="111" height="25" align="right">�Ƿ��Ա��</div></td><td width="461">
<%
if rs("DYQQ_huiyuan")<>"��" or IsNull(rs("DYQQ_huiyuan")) then
	Response.Write"<font color=#0099ff>��</font>"
Elseif rs("DYQQ_huiyuan")="��" then
	Response.Write"<font color=#FF0000>��</font>"
End if
%>
<%
if rs("DYQQ_huiyuan")<> "��" or IsNull(rs("DYQQ_huiyuan")) then
	Response.Write" <img border='0' src='img/fhy.gif'>"
Elseif rs("DYQQ_huiyuan")="��" then
	Response.Write" <img border='0' src='img/hy.gif'>"
End if
%> </td>
</tr><tr><td width="111" height="25" align="right">���ޱ�����</div></td>
<td width="461"><%
if rs("DYQQ_baohu")<>"��" or IsNull(rs("DYQQ_baohu")) then
	Response.Write"<font color=#FF0000>��</font>"
Elseif rs("DYQQ_baohu")="��" then
	Response.Write"<font color=#0099ff>��</font>"
End if
%>&nbsp;&nbsp;&nbsp;
<a target="_blank" href="http://service.qq.com/psw/mo.shtml?psw_cs.htm">
<font color="#800000">���������֤</font></a></td>
</tr><tr><td width="111" height="25" align="right">����ʱ�䣺</div></td><td width="461"><%=rs("DYQQ_time")%></td>
</tr><tr><td width="111" height="25" align="right">����״̬��</div></td><td width="461"> <%
if rs("DYQQ_chongwu")<>"��" or IsNull(rs("DYQQ_chongwu")) then
	Response.Write"<font color=#0099ff>�޳���</font>"
Elseif rs("DYQQ_chongwu")="��" then
	Response.Write"<font color=#FF0000>���г���</font>  ����ȼ�:<img border='0' title='��QQ������������Ϊ "&rs("DYQQ_cwdengji")&" ��' src='img/level"&rs("DYQQ_cwdengji")&".gif'>"
End if
%></td></tr><tr><td width="111" height="25" align="right">QQ�ȼ���</td>
<td width="461"><img border="0" title='��QQ����Ϊ <%=rs("DYQQ_dengji")%> ��' src="img/level<%=rs("DYQQ_dengji")%>.gif"></td>
</tr><tr><td width="111" height="25" align="right">���ۼ۸�</td><td width="461"> <%
if rs("DYQQ_jiage")<> "0" or IsNull(rs("DYQQ_jiage")) then
	Response.Write"<font color=#FF0000>"&rs("DYQQ_jiage")&"Ԫ</font>"
Elseif rs("DYQQ_jiage")="0" then
	Response.Write"<font color=#008080>�Զ�</font>"
End if
%></td></tr><tr><td width="111" height="25" align="right">�鿴������</td>
<td width="461"><script src='Click.asp?ID=<%=rs("id")%>'></script>��</td></tr>
<tr><td width="111" align="right" height="42">����˵����</td>
<td width="461" height="42"><%=rs("DYQQ_jieshao")%>
</td></tr><tr><td align="right" colspan="3">
<p align="left"><font color="#FF0000">��վ������<BR>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
���λע�⣬��վΪ����ҵ��վ���ڸ�λ���������б�վû�еõ��κεĺô������ڷ�<font color="#FF0000">��վ��Ա</font>���۵�QQ���ǲ����κε��������۷����κε�������뱾վ�޹ء�<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
ϣ�����ע�����������г������ĳЩ�������ӡ�<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ���ʶ��վ����Ա��վ����Ա��<p align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ���ڳ���״̬����ʾ��&nbsp;<font color="#FF0000">��վ����</font>&nbsp;�����ʹ���&nbsp;<font color="#FF0000">��</font>&nbsp;�ֵĶ��Ǳ�վ�ڲ���Ա���۵�QQ����վ���佻����������100%��֤,�������Ȿվ���Ը���</td>
</tr></table></td></tr></table>
<!--#include file="links.asp"-->
<!--#include file="end.asp"-->