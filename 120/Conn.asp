<%@ Language=VBScript CodePage=936%>
<%
'网站基本信息
Title="第一QQ"      '网站名称
dizhi="http://www.dyqq.cn/" '必须附带http://
beian="闽ICP备案中" '备案号
zzqq="77158095" '联系QQ
lxyj="fflpweb@126.com"'联系邮件
about="about.asp"'关于我们
count="<script src='http://s17.cnzz.com/stat.php?id=56657&web_id=56657&online=1&show=line' language='JavaScript' charset='gb2312'></script>"
counts="<script src='http://s49.cnzz.com/stat.php?id=421522&web_id=421522&online=1&show=line' language='JavaScript' charset='gb2312'></script>"
DYQQ_tuijian2=800000 '号码小于多少被推荐,只能为数字,否则将会出现错误
jipin=80000 '号码小于多少为极品号码,只能为数字,否则将会出现错误
djs=10 '号码点击数多少为热门号码,只能为数字,否则将会出现错误
%>
<%
squery=lcase(Request.ServerVariables("QUERY_STRING"))
sURL=lcase(Request.ServerVariables("HTTP_HOST"))
allquery=squery+sURL
if InStr(allquery,"%20")<>0 or InStr(allquery,"%27")<>0 or InStr(allquery,"'")<>0 or InStr(allquery,"%a1a1")<>0 or InStr(allquery,"%24")<>0 or InStr(allquery,"$")<>0 or InStr(allquery,"%3b")<>0 or InStr(allquery,";")<>0 or InStr(allquery,":")<>0 or InStr(allquery,"%%")<>0 or InStr(allquery,"%3c")<>0 or InStr(allquery,"<")<>0 or InStr(allquery,">")<>0 or InStr(allquery,"--")<>0 or InStr(allquery,"sp_")<>0 or InStr(allquery,"xp_")<>0 or InStr(allquery,"exec")<>0 or InStr(allquery,"\")<>0 or InStr(allquery,"DYQQ_delete")<>0 or InStr(allquery,"dir")<>0 or InStr(allquery,"exe")<>0 or InStr(allquery,"select")<>0 or InStr(allquery,"Update")<>0 or InStr(allquery,"cmd")<>0 or InStr(allquery,"*")<>0 or InStr(allquery,"^")<>0 or InStr(allquery,"(")<>0 or InStr(allquery,")")<>0 or InStr(allquery,"+")<>0 or InStr(allquery,"copy")<>0 or InStr(allquery,"format")<>0 or not(isnumeric(request("id"))) then
response.write "系统找不到指定的文件。"
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
'特殊字符过滤
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