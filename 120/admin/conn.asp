<%@ Language=VBScript CodePage=936%>
<%
'��վ������Ϣ
Title="��һ�ѣ�"      '��վ����
count="<script src='http://s17.cnzz.com/stat.php?id=56657&web_id=56657&online=1&show=line' language='JavaScript' charset='gb2312'></script>"
counts="<script src='http://s49.cnzz.com/stat.php?id=421522&web_id=421522&online=1&show=line' language='JavaScript' charset='gb2312'></script>"
Copyright="<br>Copyright &copy; 2006��2008 <a target='_blank' href='http://www.dyqq.cn/'>��һ�ѣ�</a> All Rights Reserved"     '��Ȩ˵��
'ע��:�����Ҫ�������Ϣ�к���Ӣ��ð�ŵ�,�뽫��ĳ�'��,�޷����ܳ����޷����ƵĴ���
%>
<%
squery=lcase(Request.ServerVariables("QUERY_STRING"))
sURL=lcase(Request.ServerVariables("HTTP_HOST"))
allquery=squery+sURL
if InStr(allquery,"%20")<>0 or InStr(allquery,"%27")<>0 or InStr(allquery,"'")<>0 or InStr(allquery,"%a1a1")<>0 or InStr(allquery,"%24")<>0 or InStr(allquery,"$")<>0 or InStr(allquery,"%3b")<>0 or InStr(allquery,";")<>0 or InStr(allquery,":")<>0 or InStr(allquery,"%%")<>0 or InStr(allquery,"%3c")<>0 or InStr(allquery,"<")<>0 or InStr(allquery,">")<>0 or InStr(allquery,"--")<>0 or InStr(allquery,"sp_")<>0 or InStr(allquery,"xp_")<>0 or InStr(allquery,"exec")<>0 or InStr(allquery,"\")<>0 or InStr(allquery,"delete")<>0 or InStr(allquery,"dir")<>0 or InStr(allquery,"exe")<>0 or InStr(allquery,"select")<>0 or InStr(allquery,"Update")<>0 or InStr(allquery,"cmd")<>0 or InStr(allquery,"*")<>0 or InStr(allquery,"^")<>0 or InStr(allquery,"(")<>0 or InStr(allquery,")")<>0 or InStr(allquery,"+")<>0 or InStr(allquery,"copy")<>0 or InStr(allquery,"format")<>0 or not(isnumeric(request("id"))) then
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
connstr = "Provider=Microsoft.jet.OLEDB.4.0;Data Source=" & Server.MapPath("../dyqqfdhasjba/#adbwwusrtqqerygeih@wryqwr#$!%teqw#.mdb")
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
    UHTMLEncode = fString
End If
End function
%>