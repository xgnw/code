<table align="center" border=1 cellspacing=0  width=980 bordercolorlight=#333333 bordercolordark=#efefef>
<tr bgcolor="#cccccc">
<td width="980" align="center" bgcolor="#F7F7F7" height="23">下面带有<font color=#FF0000>官</font>字的QQ号码为本站内部人员出售,所以本站对其交易信誉进行100%保证,如有问题本站绝对负责.</td>
</tr></table>
<table align="center" border=1 cellspacing=0  width=980 bordercolorlight=#333333 bordercolordark=#efefef>
<tr bgcolor="#cccccc">  
<%   
sql="select * from DYQQ where DYQQ_tuijian = 1 and DYQQ_del = 0 order by id asc"  
set mRs=server.CreateObject("adodb.recordset")  
mRs.open Sql,conn,1,1
if not mRs.eof then  
total=mRs.recordcount  
i=0  
do while not mRs.eof  
%>   
<td width="98" align="center" bgcolor="#F7F7F7" height="23"><a href="qq.asp?id=<%=mRs("id")%>" target="_blank"><b><%=mRs("DYQQ_haoma")%></b></a><font color=#FF0000>官</font></td>  
<%   
i=i+1  
if i mod 10=0 then  
response.write "</tr><tr>"  
end if  
mRs.movenext  
loop  
If (total mod 10) <> 0 Then  
for i = 1 to (10 - (total mod 10))  
Response.write "<td width=132 align=center bgcolor=#F7F7F7 height=23>&nbsp;</td>"  
Next  
End If    
else  
%> 
</tr></table>
<% end if %> 