<!--#include file="Conn.asp"-->
<%
'���qq��
If Request.Querystring("action")="add" then
dim DYQQ_haoma,DYQQ_lianxi,DYQQ_mail,DYQQ_dengji,DYQQ_weishu,DYQQ_chongwu,DYQQ_huiyuan,DYQQ_baohu,DYQQ_jiage,DYQQ_hongzuan,DYQQ_huangzuan,DYQQ_lanzuan,DYQQ_cwdengji,DYQQ_jieshao
	DYQQ_haoma=htmlencode(request.form("DYQQ_haoma"))
	DYQQ_lianxi=htmlencode(request.form("DYQQ_lianxi"))
	DYQQ_mail=htmlencode(request.form("DYQQ_mail"))
	DYQQ_dengji=htmlencode(request.form("DYQQ_dengji"))
	DYQQ_weishu=htmlencode(request.form("DYQQ_weishu"))
	DYQQ_chongwu=htmlencode(request.form("DYQQ_chongwu"))
	DYQQ_huiyuan=htmlencode(request.form("DYQQ_huiyuan"))
	DYQQ_baohu=htmlencode(request.form("DYQQ_baohu"))
	DYQQ_jiage=htmlencode(request.form("DYQQ_jiage"))
	DYQQ_time=htmlencode(request.form("DYQQ_time"))
	DYQQ_hongzuan=htmlencode(request.form("DYQQ_hongzuan"))
	DYQQ_huangzuan=htmlencode(request.form("DYQQ_huangzuan"))
	DYQQ_lanzuan=htmlencode(request.form("DYQQ_lanzuan"))
	DYQQ_cwdengji=htmlencode(request.form("DYQQ_cwdengji"))
	DYQQ_jieshao=htmlencode(request.form("DYQQ_jieshao"))
If DYQQ_haoma="" or DYQQ_lianxi="" or DYQQ_dengji="" or DYQQ_jiage="" or DYQQ_cwdengji="" or DYQQ_mail="" or DYQQ_jieshao="" or DYQQ_weishu="" then
	Response.Write "<script>alert('����д�����������޷��ύ��');history.back();</SCRIPT>"
ElseIf not (isNumeric(DYQQ_haoma)) then
    Response.Write "<script>alert('QQ����ֻ��Ϊ���֣�');history.back();</SCRIPT>"
ElseIf not (isNumeric(DYQQ_lianxi)) then
    Response.Write "<script>alert('��ϵQQ����ȷ��');history.back();</SCRIPT>"
ElseIf not (isNumeric(DYQQ_dengji)) then
    Response.Write "<script>alert('QQ�ȼ�����');history.back();</SCRIPT>"
ElseIf not (isNumeric(DYQQ_jiage)) then
    Response.Write "<script>alert('���ۼ۸�Ϊ�Ƿ�����');history.back();</SCRIPT>"
ElseIf DYQQ_haoma>700000000 or DYQQ_haoma<30001 then
	Response.Write "<script>alert('��������ȷ��QQ����!С��30000�ʹ��700000000�ĺ������ǲ�����');history.back();</Script>"
ElseIf DYQQ_dengji>32 or DYQQ_dengji<0 then
	Response.Write "<script>alert('QQ�ȼ������Դ��32��С��0');history.back();</SCRIPT>"
ElseIf DYQQ_cwdengji>32 or DYQQ_cwdengji<0 then
	Response.Write "<script>alert('������QQ����ȼ����32������д32������Ŀǰ���ֻ֧��32��');history.back();</SCRIPT>"
ElseIf DYQQ_lianxi>700000000 or DYQQ_lianxi<10000 then
	Response.Write "<script>alert('��������ȷ����ϵ��QQ����!���700000000�ĺ���������Ϊû����!���Բ���������');history.back();</Script>"
ElseIf len(DYQQ_jieshao)>300 then
    Response.Write "<script>alert('����˵���ַ���������');history.back();</Script>"
ElseIf len(DYQQ_jiage)>5 or len(DYQQ_jiage)<0 then
	Response.Write "<script>alert('�Բ���������5λ���ڵļ۸�����۸񲻶�������������0');history.back();</Script>"
Else
Set mRs= Server.CreateObject("adodb.recordSet")
Sql="Select* from DYQQ where DYQQ_haoma="&DYQQ_haoma
mRs.open Sql,conn,1,3
If not (mRs.eof and mRs.bof) then
	Response.Write"<script>alert('���QQ�������ڳ����У��벻Ҫ�ظ��ύ��');history.back();</SCRIPT>"
Else
	mRs.addnew
	mRs("DYQQ_haoma")= DYQQ_haoma
	mRs("DYQQ_lianxi")= DYQQ_lianxi
	mRs("DYQQ_weishu")= DYQQ_weishu
	mRs("DYQQ_mail")= DYQQ_mail
	mRs("DYQQ_dengji")= DYQQ_dengji
	mRs("DYQQ_chongwu")= DYQQ_chongwu
	mRs("DYQQ_huiyuan")= DYQQ_huiyuan
	mRs("DYQQ_baohu")= DYQQ_baohu
	mRs("DYQQ_hongzuan")= DYQQ_hongzuan
	mRs("DYQQ_huangzuan")= DYQQ_huangzuan
	mRs("DYQQ_lanzuan")= DYQQ_lanzuan
	mRs("DYQQ_cwdengji")= DYQQ_cwdengji
	mRs("DYQQ_time")= now()
	mRs("DYQQ_jiage")= DYQQ_jiage
	mRs("DYQQ_jieshao")= DYQQ_jieshao
	mRs.update
	Response.Write"<script>alert('�ύ��ɣ�');this.location.href='index.asp';</SCRIPT>"
End If
mRs.close
Set mRs=nothing
End If
conn.close
Set conn=nothing
End If
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��һQQ dyqq.cn ���۵Ǽǩ�QQ��QQ�ũ�QQ���멦QQ���뽻������</title>
<META name="keywords" content="��һQQ dyqq QQ QQ�� QQ���� QQ���뽻������ 5λQQ���� 6λQQ���� 7λQQ���� 8λQQ���� 9λQQ����">
<META name="generator" content="��һQQ dyqq QQ QQ�� QQ���� QQ���뽻������ 5λQQ���� 6λQQ���� 7λQQ���� 8λQQ���� 9λQQ����">
<META name="description" content="��һQQ dyqq QQ QQ�� QQ���� QQ���뽻������ 5λQQ���� 6λQQ���� 7λQQ���� 8λQQ���� 9λQQ����">
</head>
<!--#include file="top.asp"-->		
<table align="center" border=1 cellspacing=0  width=980 bordercolorlight=#333333 bordercolordark=#efefef>
<tr bgcolor="#FFFFFF"><td width="50%">
<form name="form1" method="post" action="add.asp?action=add" style="margin:0">
<table border="1" width="100%" bordercolorlight="#C0C0C0" cellspacing="0" bordercolordark="#FFFFFF">
<tr>
<td width="16%" align="right">����QQ���룺<font color="#FF0000">*</font></div></td>
<td width="35%"><input name="DYQQ_haoma" type="text" class="input"> </td>
<td>����������QQ����</td></tr><tr>
<td align="right">QQ����ȼ���<font color="#FF0000">*</font></td>
<td><input name="DYQQ_dengji" type="text" class="input"></td>
<td>���۵�QQ�ȼ�Ϊ���٣�ֻ����<font color="#FF0000">1</font>--<font color="#FF0000">32</font>֮�������,���û�еȼ�������<font color="#FF0000">0</font></td>
</tr><tr>
<td align="right">��ϵQQ���룺<font color="#FF0000">*</font></td>
<td><input name="DYQQ_lianxi" type="text" class="input"> </td>
<td>������ϵ������QQ��</td></tr><tr>
<td align="right">QQ����λ����<font color="#FF0000">*</font></td>
<td><input name="DYQQ_weishu" type="text" class="input"></td>
<td>���۵�QQ����λ����ֻ����<font color="#FF0000">5</font>--<font color="#FF0000">9</font>֮�������</td>
</tr>
<tr>
<td align="right">��ϵ���䣺<font color="#FF0000">*</font></td>
<td><input name="DYQQ_mail" type="text" class="input"> </td>
<td>������ϵ����������</td>
</tr>
<tr>
<td align="right">���ۼ۸�<font color="#FF0000">*</font></td>
<td><input name="DYQQ_jiage" type="text" class="input">   Ԫ</td>
<td>���ۼ۸�(ֻ��Ϊ����,������ȡ),�������<font color="#008080">�Զ�</font>,������<font color="#FF0000">0</font></td>
</tr>
<tr>
<td align="right">����ȼ���<font color="#FF0000">*</font></td>
<td>
<input name="DYQQ_cwdengji" type="text" class="input" value="0"></td>
<td>���۵�QQ���г���ȼ�Ϊ���٣�û�еȼ���ʹ��Ĭ�ϵ�<font color="#FF0000">0</font></td>
</tr>
<tr>
<td align="right">�Ƿ��Ա��<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_huiyuan='��';
document.write ('<input type="radio" name="DYQQ_huiyuan" value="��" ');
if (DYQQ_huiyuan=='��')
{
document.write (' checked');
}
document.write ('> ��');
document.write (' <input type="radio" name="DYQQ_huiyuan" value="��" ');
if (DYQQ_huiyuan=='��')
{
document.write (' checked');
}
document.write ('> ��');
//-->
</SCRIPT></td><td>����ݳ��۵�QQ״̬ѡ��</td>
</tr><tr>
<td align="right">�Ƿ���꣺<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_hongzuan='��';
document.write ('<input type="radio" name="DYQQ_hongzuan" value="��" ');
if (DYQQ_hongzuan=='��')
{
document.write (' checked');
}
document.write ('> ��');
document.write (' <input type="radio" name="DYQQ_hongzuan" value="��" ');
if (DYQQ_hongzuan=='��')
{
document.write (' checked');
}
document.write ('> ��');
//-->
</SCRIPT></td><td>����ݳ��۵�QQ״̬ѡ��</td>
</tr><tr>
<td align="right">�Ƿ���꣺<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_huangzuan='��';
document.write ('<input type="radio" name="DYQQ_huangzuan" value="��" ');
if (DYQQ_huangzuan=='��')
{
document.write (' checked');
}
document.write ('> ��');
document.write (' <input type="radio" name="DYQQ_huangzuan" value="��" ');
if (DYQQ_huangzuan=='��')
{
document.write (' checked');
}
document.write ('> ��');
//-->
</SCRIPT></td><td>����ݳ��۵�QQ״̬ѡ��</td>
</tr><tr>
<td align="right">�Ƿ����꣺<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_lanzuan='��';
document.write ('<input type="radio" name="DYQQ_lanzuan" value="��" ');
if (DYQQ_lanzuan=='��')
{
document.write (' checked');
}
document.write ('> ��');
document.write (' <input type="radio" name="DYQQ_lanzuan" value="��" ');
if (DYQQ_lanzuan=='��')
{
document.write (' checked');
}
document.write ('> ��');
//-->
</SCRIPT></td><td>����ݳ��۵�QQ״̬ѡ��</td>
</tr><tr>
<td align="right">���ޱ�����<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_baohu='��';
document.write ('<input type="radio" name="DYQQ_baohu" value="��" ');
if (DYQQ_baohu=='��')
{
document.write (' checked');
}
document.write ('> ��');
document.write (' <input type="radio" name="DYQQ_baohu" value="��" ');
if (DYQQ_baohu=='��')
{
document.write (' checked');
}
document.write ('> ��');
//-->
</SCRIPT></td><td>����ݳ��۵�QQ״̬ѡ��</td>
</tr><tr>
<td align="right">�Ƿ�����<font color="#FF0000">*</font></td>
<td class=tablebody1>
<SCRIPT LANGUAGE="JavaScript">
<!--
var DYQQ_chongwu='��';
document.write ('<input type="radio" name="DYQQ_chongwu" value="��" ');
if (DYQQ_chongwu=='��')
{
document.write (' checked');
}
document.write ('> ��');
document.write (' <input type="radio" name="DYQQ_chongwu" value="��" ');
if (DYQQ_chongwu=='��')
{
document.write (' checked');
}
document.write ('> ��');
//-->
</SCRIPT></td><td>����ݳ��۵�QQ״̬ѡ��</td></tr>
<td align="right">����˵����<font color="#FF0000">*</font></td><td>
<textarea rows="7" name="DYQQ_jieshao" cols="35"></textarea></td>
<td>��������˵��������������д,����300�ַ�����</td>
</tr><tr><td colspan="2"><div align="center">
<input name="Submit" type="submit" class="button" value="�ύ">
</div></td>
<td>���ϴ�<font color="#FF0000">*</font>Ϊ�������ȷ������������д�������ύ��ʼ����</td>
</tr></table></form></td></tr></table>
<!--#include file="links.asp"-->
<!--#include file="end.asp"-->