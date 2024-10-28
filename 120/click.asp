<!--#include file = "conn.asp"-->
<%
ID = replace(replace(replace(replace(replace(replace(request("ID"),"'",""),"%",""),"&",""),"*",""),">",""),"<","")
%>
<%
sql="update DYQQ set DYQQ_Click = DYQQ_Click + 1 where ID= "&ID
conn.execute(sql)
sql="Select * from DYQQ where ID= "&ID
set rs = conn.execute(sql)
%>
document.write("<%=rs("DYQQ_Click")+1%>")