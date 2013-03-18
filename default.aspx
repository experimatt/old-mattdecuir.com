<%@Import Namespace="System.Data" %>
<%@Import Namespace="System.Data.OleDb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    Dim objConnection As New OleDbConnection(ConfigurationSettings.AppSettings("strMatt"))
    
    Sub Page_Load()
    End Sub

    
    </script>
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Matt Decuir</title>
<link href="common/logo.ico" rel="Shortcut Icon"  />
<link href="common/styles.css" rel="stylesheet" type="text/css" />
<meta name="keywords" content="Matt Decuir, Matthew Decuir, Matthew, Mathew Decuir, Mathew, Matt, Decuir, mattdecuir.com, mattdecuir, Matthew S. Decuir, Matthew S Decuir, Matt S. Decuir, Matt S Decuir, Matthew Strauss Decuir, Matt Strauss Decuir, Strauss, Web Development, Consulting, Bellevue, Washington, Western, Western Washington University, WWU, Western, Bellingham, Google, Google Valuation, Google Analysis, Google Report, Google Fundamental Analysis, Fundamental Analysis, web developer" />
<meta name="description" content="This is a personal website for Matt Decuir which includes a variety of cool information, reports, links, and pictures.  You might even learn something new!" />
<meta name="verify-v1" content="IW/daWfHMwLfjwjP7YPzf5ZSOYOlvXacBzfrYjpXsZc=" />
<meta name="msvalidate.01" content="C4F7A5450CBA44C8A24EE62C08069E4A" />

</head>
<body>
<center>

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

                <h2 style="text-align: center;">News</h2><br />
                <div class="newshead">Excel Blog Post! <span class="date"> Posted on 2/6/2011</span></div>
                <div class="mainsumm">
                   <a href="http://chandoo.org/wp/">Chandoo.org</a> is the best excel website you will ever visit.  It's got tips with everything from the most simple walk throughs, to the most complicated dashboards you could imagine.  Well guess who wrote a guest blog post for Chandoo?  Me!  Check out my <a href="http://chandoo.org/wp/2011/02/02/business-analysts-excel/">blog post here</a>, which includes some basic and more advanced tricks in excel!</div><br />
                <div class="newshead">Blog <span class="date"> Posted on 1/17/2011</span></div>
                <div class="mainsumm">
                    I hate to say it, but I've neglected this site for quite a while.  Until I make some serious changes, feel free to check out my <a href="http://mattdecuir.wordpress.com/">new blog</a>!  And if you'd like to see what music I'm listening to, check out <a href="http://hypem.com/#!/decuirm">my profile on hypem.com</a>.
                </div><br />

                <div class="newshead">Graphic Updates <span class="date"> Posted on 11/07/2007</span></div>
                <div class="mainsumm">
                    I've changed the graphics and styles of the site, including a new logo, a different menu, and a few other changes.  
                    I'd love to hear your input on the new look of the site.  You can reach me via e-mail <a href="mailto:decuirm@gmail.com">here</a>.
                </div><br />


                <div class="newshead">New Pictures <span class="date"> Posted on 10/24/2007</span></div>
                <div class="mainsumm">
                    I've added some pictures from my recent trip to Europe to
                    the pictures section. Take a look at some of the new pictures <a href="pictures.aspx">
                    here</a>.&nbsp;
                    I've also made some slight changes here and there with more updates to come shortly, so check back soon.
                </div><br />

                <div class="newshead">Google Analysis <span class="date"> Posted on 6/21/2007</span></div>
                <div class="mainsumm">
                    I've added an in-depth analysis of Google, Inc. to my website.  The report can be viewed <a href="Google/default.aspx">here</a>.
                    &nbsp; This report was created for a Finance class at Western Washington University during Spring Quarter of 2007.
                </div>
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
