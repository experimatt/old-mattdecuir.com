<%@Import Namespace="System.Data" %>
<%@Import Namespace="System.Data.OleDb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Dim objConnection As New OleDbConnection(ConfigurationSettings.AppSettings("strMatt"))
    
    Sub Page_Load()
        Dim strCat As String = Request.QueryString("CatID")
        Dim strSubCat As String = Request.QueryString("SubCatID")
        Dim myDataTable As DataTable
        
        If Session("CatID") Is Nothing Then
            Session.Add("CatID", "1")
        End If
        'Response.Write("CatID = " & Session("CatID"))
        
        If Not Page.IsPostBack Then
            BindCats()
            If strCat = "1" Then
                rblCategories.SelectedIndex = 0
            ElseIf strCat = "3" Then
                rblCategories.SelectedIndex = 1
            Else
                rblCategories.SelectedIndex = 2
            End If
            
        End If
        
        If strSubCat > "" Then
            myDataTable = FillDataTableSP("qryPicsBySubCat", "@SubCatID", strSubCat)
            pnlSubCategories.Visible = True
            If Not Page.IsPostBack Then
                BindSubCats(strSubCat)
            End If
        ElseIf strCat > "" Then
            myDataTable = FillDataTableSP("qryPicsByCat", "@CatID", strCat)
            pnlSubCategories.Visible = True
            If Not Page.IsPostBack Then
                BindSubCats(strSubCat)
            End If
                
        Else
            myDataTable = FillDataTableSP("qryAllPictures")
            pnlSubCategories.Visible = False
        End If
        If myDataTable.Rows.Count = 0 Then
            lblMessage.Text = "<h3 style='color: red;'>Sorry, there are no pictures in that category</h3><br ><br /><Br /><Br />"
            
            lblEnding.Text = "<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>"
        End If
        dlPictures.DataSource = myDataTable
        dlPictures.DataBind()
        
    End Sub
    
    
    Sub BindCats()
        Dim mySQL As String = "SELECT tblPicCategories.strCategory, tblPicCategories.CatID FROM(tblPicCategories) ORDER BY tblPicCategories.strCategory;"
        Dim myCmd As New OleDbCommand(mySQL, objConnection)
        objConnection.Open()
        rblCategories.DataSource = myCmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
        rblCategories.DataBind()
        objConnection.Close()
        
        rblCategories.Items.Insert(2, "All")
    End Sub
    
    Sub BindSubCats(ByVal strSubCat As String)
        Dim strCat As String = Session("CatID")
        'Response.Write("CatID = " & strCat)
        Dim mySQL As String = "SELECT tblPicSubCategories.strSubCategory, tblPicSubCategories.SubCatID, tblPicSubCategories.CatID FROM(tblPicSubCategories) WHERE (((tblPicSubCategories.CatID)=" & strCat & ")) ORDER BY tblPicSubCategories.strSubCategory;"
        Dim myCmd As New OleDbCommand(mySQL, objConnection)
        objConnection.Open()

        rblSubCategories.DataSource = myCmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
        rblSubCategories.DataBind()
        objConnection.Close()
        
        If strCat = "1" then
        'family
            rblCategories.SelectedIndex = 0
                If strSubCat = "1" Then
                    rblSubCategories.SelectedIndex = 5
                    'switzerland
                ElseIf strSubCat = "2" Then
                    rblSubCategories.SelectedIndex = 2
                    'LA
                ElseIf strSubCat = "3" Then
                    rblSubCategories.SelectedIndex = 3
                    'Santa Cruz
                ElseIf strSubCat = "4" Then
                    rblSubCategories.SelectedIndex = 0
                    'Berkeley
                ElseIf strSubCat = "6" Then
                    rblSubCategories.SelectedIndex = 1
                    'Europe
                ElseIf strSubCat = "8" Then
                    rblSubCategories.SelectedIndex = 4
                    'Seattle
                End If      
        elseif strCat = "3" then
        'other
            rblCategories.SelectedIndex = 1
                If strSubCat = "5" then
                    rblSubCategories.SelectedIndex = 0
                    'landscapes
                end if                   
        end if
        
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
    
    Sub ChangeCategory(ByVal sender As Object, ByVal e As System.EventArgs)
        If rblCategories.SelectedItem.Value = "All" Then
            Session("CatID") = ""
            Response.Redirect("pictures.aspx")
        Else
        Session("CatID") = rblCategories.SelectedItem.Value
        Response.Redirect("pictures.aspx?CatID=" & rblCategories.SelectedItem.Value)
            
        End If
        
    End Sub
    
    Sub ChangeSubCat(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("pictures.aspx?SubCatID=" & rblSubCategories.SelectedItem.Value)
        'the reason clicking on a subcategory doesn't work is because it doesn't write the catID to the session
    End Sub
    
    Sub WriteSession(ByVal CatID As Integer)
        Session("CatID") = CatID
    End Sub


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Matt Decuir's Pictures</title>
<link href="common/logo.ico" rel="Shortcut Icon"  />
<link href="common/styles.css" rel="stylesheet" type="text/css" />
<meta name="keywords" content="Matt Decuir, Matthew Decuir, Matthew, Mathew Decuir, Mathew, Matt, Decuir, mattdecuir.com, mattdecuir, Matthew S. Decuir, Matthew S Decuir, Matt S. Decuir, Matt S Decuir, Matthew Strauss Decuir, Matt Strauss Decuir, Strauss, Web Development, Consulting, Bellevue, Washington, Western, Western Washington University, WWU, Western, Bellingham, Google, Google Valuation, Google Analysis, Google Report, Google Fundamental Analysis, Fundamental Analysis, web developer" />
<meta name="description" content="This is a personal website for Matt Decuir which includes a variety of cool information, reports, links, and pictures.  You might even learn something new!" />
</head>
<body>
<center>
<div id="container" align="center">
<form runat="server" id="form1">
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
<h2 style="text-align:center;">Pictures</h2>
<br />

<table border="0" cellpadding="0" cellspacing="0">
<tr><td width="120px" valign="top">
<asp:panel ID="pnlCategories" runat="server" Visible="true">
<div class="songhead">Category: </div>
<asp:RadioButtonList ID="rblCategories" OnSelectedIndexChanged="ChangeCategory" enableviewstate="true"
 DataTextField="strCategory" DataValueField="CatID" autopostback="true" runat="server" RepeatDirection="vertical">
</asp:RadioButtonList><br />
</asp:panel>
</td>
<td width="120px" valign="top">
<asp:panel ID="pnlSubCategories" runat="server" Visible="true">
<div class="songhead">Sub Category: </div>
<asp:RadioButtonList ID="rblSubCategories" OnSelectedIndexChanged="ChangeSubCat" EnableViewState="true"
DataTextField="strSubCategory" DataValueField="SubCatID" autopostback="true" runat="server" RepeatDirection="vertical">
</asp:RadioButtonList><br />
</asp:panel>
</td></tr>
</table>

<asp:DataList  id="dlPictures" runat="server">
<ItemTemplate>
<%# "<img src='images/medium-" & Container.DataItem("strPictureURL") & "' alt='" & Container.DataItem("strAlt") & "' border='0' />" %><br />
<div class="maintext"> <%# Container.DataItem("strDescription")%></div>
<div class="maintext"><b>Category:</b> <%#Container.DataItem("strCategory")%></div>
<div class="maintext"><b>Sub Category:</b> <%#Container.DataItem("strSubCategory")%></div>


<!-- "<a href='pictures.aspx?CatID=" & Container.DataItem("CatID") & "'>" & Container.DataItem("strDescription") & "</a>" -->
<!-- "<a  href='pictures.aspx?SubCatID=" & Container.DataItem("SubCatID") & "'>" & Container.DataItem("strSubCategory") & "</a>" -->
<!-- onClick=" & Session("CatID") = Container.DataItem("CatID") & " -->

<br />
</ItemTemplate>
</asp:DataList>

<asp:label ID="lblMessage" runat="server"></asp:label> 

<br />
<asp:Label ID="lblEnding" runat="server" />

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
</form>
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
