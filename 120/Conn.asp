<%@ Language=VBScript CodePage=936%>
<%
'��վ������Ϣ
Title="��һQQ"      '��վ����
dizhi="http://www.dyqq.cn/" '���븽��http://
beian="��ICP������" '������
zzqq="77158095" '��ϵQQ
lxyj="fflpweb@126.com"'��ϵ�ʼ�
about="about.asp"'��������
count="<script src='http://s17.cnzz.com/stat.php?id=56657&web_id=56657&online=1&show=line' language='JavaScript' charset='gb2312'></script>"
counts="<script src='http://s49.cnzz.com/stat.php?id=421522&web_id=421522&online=1&show=line' language='JavaScript' charset='gb2312'></script>"
DYQQ_tuijian2=800000 '����С�ڶ��ٱ��Ƽ�,ֻ��Ϊ����,���򽫻���ִ���
jipin=80000 '����С�ڶ���Ϊ��Ʒ����,ֻ��Ϊ����,���򽫻���ִ���
djs=10 '������������Ϊ���ź���,ֻ��Ϊ����,���򽫻���ִ���
%>
<%
squery=lcase(Request.ServerVariables("QUERY_STRING"))
sURL=lcase(Request.ServerVariables("HTTP_HOST"))
allquery=squery+sURL
if InStr(allquery,"%20")<>0 or InStr(allquery,"%27")<>0 or InStr(allquery,"'")<>0 or InStr(allquery,"%a1a1")<>0 or InStr(allquery,"%24")<>0 or InStr(allquery,"$")<>0 or InStr(allquery,"%3b")<>0 or InStr(allquery,";")<>0 or InStr(allquery,":")<>0 or InStr(allquery,"%%")<>0 or InStr(allquery,"%3c")<>0 or InStr(allquery,"<")<>0 or InStr(allquery,">")<>0 or InStr(allquery,"--")<>0 or InStr(allquery,"sp_")<>0 or InStr(allquery,"xp_")<>0 or InStr(allquery,"exec")<>0 or InStr(allquery,"\")<>0 or InStr(allquery,"DYQQ_delete")<>0 or InStr(allquery,"dir")<>0 or InStr(allquery,"exe")<>0 or InStr(allquery,"select")<>0 or InStr(allquery,"Update")<>0 or InStr(allquery,"cmd")<>0 or InStr(allquery,"*")<>0 or InStr(allquery,"^")<>0 or InStr(allquery,"(")<>0 or InStr(allquery,")")<>0 or InStr(allquery,"+")<>0 or InStr(allquery,"copy")<>0 or InStr(allquery,"format")<>0 or not(isnumeric(request("id"))) then
response.write "ϵͳ�Ҳ���ָ�����ļ���"
Response.End
End If
%>
<%
dim conn
dim connstr
dim startime
startime=Timer * 1000
Set conn = Server.createobject("ADODB.Connection")
connstr = "Provider=Microsoft.jet.OLEDB.4.0;Data Source=" & Server.MapPath("dyqqfdhasjba/#adbwwusrtqqerygeih@wryqwr#$!%teqw#.mdb")
conn.Open connstr
%>
<%
sub connclose()
conn.close
set conn=nothing
end sub
%>
<%
'�����ַ�����
function HTMLEncode(fString)
If not isnull(fString) then
    fString = replace(fString, ">", "&gt;")
    fString = replace(fString, "<", "&lt;")
    fString = Replace(fString, CHR(32), "&nbsp;")
    fString = Replace(fString, CHR(9), "&nbsp;")
    fString = Replace(fString, CHR(34), "&quot;")
    fString = Replace(fString, CHR(39), "&#39;")
    fString = Replace(fString, CHR(13), "")
    fString = Replace(fString, CHR(10) & CHR(10), "</p><p> ")
    fString = Replace(fString, CHR(10), "<br> ")
    HTMLEncode = fString
End If
End function
%>
<%
function UHTMLEncode(fString)
If not isnull(fString) then
    fString = Replace(fString, "&nbsp;", CHR(32))
    fString = Replace(fString, "&nbsp;", CHR(9))
    fString = Replace(fString, "&quot;", CHR(34))
    fString = Replace(fString, "&#39;", CHR(39))
    fString = Replace(fString, "", CHR(13))
    fString = Replace(fString, "</p><p> ", CHR(10) & CHR(10))
    fString = Replace(fString, "<br> ", CHR(10))
    return fString
End If
End function
%>