<%@Import Namespace="System.Data" %>
<%@Import Namespace="System.Data.OleDb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    Dim objConnection As New OleDbConnection(ConfigurationSettings.AppSettings("strMatt"))

    Sub Page_Load()
        dlLinks.DataSource = FillDataTableSP("qryLinks")
        dlLinks.DataBind()
    End Sub
    
    Function FillDataTableSP(ByVal strSPName As String, Optional ByVal strParm1 As _
    String = "", Optional ByVal strValue1 As String = "") As DataTable
        
        Dim objCommand As OleDbCommand = New OleDbCommand(strSPName, objConnection)
        objCommand.CommandType = CommandType.StoredProcedure
        
        Dim objAdapter As New OleDbDataAdapter(objCommand)
        Dim dt As New DataTable()
        
        If strParm1 > "" Then
            Dim objParm As OleDbParameter
            objParm = objCommand.Parameters.Add(strParm1, OleDbType.Char)
            objParm.Direction = ParameterDirection.Input
            objParm.Value = strValue1
        End If
        
        Try
            objAdapter.Fill(dt)
        Catch objException As Exception
            Response.Write("Error:" & objException.Message)
        End Try
        Return dt
    End Function



</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Matt Decuir's Useful Links</title>
<link href="common/logo.ico" rel="Shortcut Icon"  />
<link href="common/styles.css" rel="stylesheet" type="text/css" />
<meta name="keywords" content="Matt Decuir, Matthew Decuir, Matthew, Mathew Decuir, Mathew, Matt, Decuir, mattdecuir.com, mattdecuir, Matthew S. Decuir, Matthew S Decuir, Matt S. Decuir, Matt S Decuir, Matthew Strauss Decuir, Matt Strauss Decuir, Strauss, Web Development, Consulting, Bellevue, Washington, Western, Western Washington University, WWU, Western, Bellingham, Google, Google Valuation, Google Analysis, Google Report, Google Fundamental Analysis, Fundamental Analysis, web developer" />
<meta name="description" content="This is a personal website for Matt Decuir which includes a variety of cool information, reports, links, and pictures.  You might even learn something new!" />
</head>
<body><center>
<div id="container" align="center">
<table cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2">
        <!-- Start the header section -->
            <div id="header">
                <!--#include file="includes/header.inc"-->
            </div>
        <!-- end the header section -->
    </td>
  </tr>
  <tr>
    <td id="tmenu">
        <!-- start the menu section -->
            <div id="menu">
                <!--#include file="includes/menu.inc"-->
            </div>
        <!-- end the menu section -->  
    </td>
    <td>

<!-- start the main section -->
<div id="main">
<h2 align="center">Links</h2><br />

<div class="maintext">I hate when people show you links that you either already have seen before, or don't have 
any interest in, so I'll try to only post links that are new and interesting.</div><br />

<asp:DataList  id="dlLinks" runat="server">
<ItemTemplate>
<div class="linkhead"><%#"<a href='" & Container.DataItem("strLinkURL") & "'>" & Container.DataItem("strLinkTitle") & "</a>"%></div>
<div class="linkdesc"> <%#Container.DataItem("strLinkDescription")%></div><br />
</ItemTemplate>
</asp:DataList> 

</div>
<!-- end the main section -->

    </td>     
  </tr>
  
  <tr>
    <td colspan="2">
        <!-- start the footer section -->
            <div id="footer">
                <!--#include file="includes/footer.inc"-->
            </div>
        <!-- end the footer section -->    
    </td>
  </tr>  
</table>

</div>
<!-- end the container -->
</center>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-413906-2";
urchinTracker();
</script>
</body>
</html>
