<!--#include file="check.asp" -->
<HTML>
<HEAD><TITLE><% =Title %> - 管理页面</TITLE>
<SCRIPT src="menu.js"></SCRIPT>
<META content="MSHTML 6.00.2800.1106" name=GENERATOR>
<link href="css.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<TABLE cellSpacing=0 cellPadding=0 width="154" align=left border=0>
  <TBODY>
    <TR> 
      <TD height="23" vAlign=top><img src="img/title.gif" width="154" height="22"></TR>
    <TR> 
      <TD height="25" vAlign=middle background="img/admin_back.gif"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="5">
          <tr> 
            <td class="font">
			<p align="center"><font color="#FFFFFF"><% =Title %>后台</font></td>
          </tr>
        </table></TR>
    <TR>
      <TD height="7" vAlign=top background="img/admin_center.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><img src="img/admin_top1.gif" width="154" height="7"></td>
          </tr>
          <tr> 
            <td><TABLE width="92%" border=0 align="center" cellPadding=0 cellSpacing=0 style="BORDER-COLLAPSE: collapse">
                <TBODY>
                  <TR> 
                    <TD width="80%" height=22 class="font">&nbsp;<IMG 
      src="img/doc.gif" width="14" height="12" border=0> <strong><font color="3168DF">用户登陆管理</font></strong></TD>
                    <TD width="20%" align="center" class="font" style="CURSOR: hand" onClick=showtb(1)><img src="img/do.gif" name="ac4" width="15" height="15" id="ac4" style="CURSOR: hand" > 
                    </TD>
                  </TR>
                </TBODY>
              </TABLE>
              <TABLE width="75%" border=0 align="center" cellPadding=0 cellSpacing=0 id=tbtype1 style="BORDER-COLLAPSE: collapse">
                <TBODY>
                  <TR> 
                    <TD width="100%" height=20 align="center" class="font"><a href="Mopass.asp?action=Admin_list" target="main">管理列表</a> </TD>
                  </TR>
                 <TR> 
                    <TD width="100%" height=20 align="center" class="font"><a href="Mopass.asp?action=Admin_add" target="main">添加管理</a> 
                     </TD>
                  </TR><TR> 
                    <TD width="100%" height=20 align="center" class="font"><a href="check_login.asp?action=Quit" target="_parent">退出登陆</a></TD>
                  </TR>
                </TBODY>
              </TABLE>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td><img src="img/admin_top21.gif" width="154" height="12"></td>
                </tr>
              </table></td>
          </tr>
        </table>
        </TR>
    <TR> 
      <TD vAlign=top background="img/admin_center.gif"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><img src="img/admin_top1.gif" width="154" height="7"></td>
          </tr>
          <tr> 
            <td><TABLE width="92%" border=0 align="center" cellPadding=0 cellSpacing=0 style="BORDER-COLLAPSE: collapse">
                <TBODY>
                  <TR> 
                    <TD width="80%" height=22 class="font">&nbsp;<IMG 
      src="img/doc.gif" width="14" height="12" border=0> <strong><font color="3168DF">管理出售</font></strong></TD>
                    <TD width="20%" align="center" class="font" style="CURSOR: hand" onClick=showtb(2)> 
                      <img src="img/do.gif" name="ac4" width="15" height="15" id="ac4" style="CURSOR: hand" > 
                    </TD>
                  </TR>
                </TBODY>
              </TABLE></td>
          </tr>
        </table>
<TABLE width="75%" border=0 align="center" cellPadding=0 cellSpacing=0 id=tbtype2 style="BORDER-COLLAPSE: collapse">
          <TBODY>
<TR>
  <TD height=20 align="center" class="font"><a href="haoma.asp" target="main">所有号码</a> 
  </TD>
</TR>
<TR> 
<TD height=20 align="center" class="font"><a href="guanfang.asp" target="main">官方出售</a></TD>
</TR><TR> 
<TD height=20 align="center" class="font"><a href="geren.asp" target="main">个人出售</a></TD>
</TR><TR> 
  <TD height=20 align="center" class="font"><a href="huishou.asp" target="main">回收站</a></TD>
</TR></TBODY></TABLE>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr> 
            <td><img src="img/admin_top21.gif" width="154" height="12"></td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><img src="img/admin_top1.gif" width="154" height="7"></td>
          </tr>
          <tr> 
            <td><TABLE width="92%" border=0 align="center" cellPadding=0 cellSpacing=0  style="BORDER-COLLAPSE: collapse">
                <TBODY>
                  <TR> 
                    <TD width="80%" height=22 class="font">&nbsp;<IMG src="img/doc.gif" width="14" height="12" border=0> <strong><font color="3168DF">说明</font></strong></TD>
                    <TD width="20%" align="center" class="font" style="CURSOR: hand" onClick=showtb(3)> 
                      <img src="img/do.gif" name="ac4" width="15" height="15" id="ac4" style="CURSOR: hand" > 
                    </TD>
                  </TR>
                </TBODY>
              </TABLE></td>
          </tr>
        </table>
        <TABLE width="75%" border=0 align="center" cellPadding=0 cellSpacing=0 id=tbtype3 style="BORDER-COLLAPSE: collapse">
          <TBODY>
            <TR> 
              <TD height=20 align="center" class="font">系统：</TD>
            </TR>
            <TR> 
              <TD height=20 align="center" class="font">第一QQ号码出售系统</TD>
            </TR>
            <TR>
              <TD height=20 align="center" class="font">版本：</TD>
            </TR>
            <TR>
              <TD height=20 align="center" class="font">v 2.0</TD>
				<p>　</p>
				<p>　</p>
				<p>　</p>
				<p>　</p>
            </TR>
          </TBODY>
        </TABLE>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><img src="img/admin_top21.gif" width="154" height="12"></td>
          </tr>
        </table>
    </TR>
  </TBODY>
</TABLE>
</BODY></HTML>