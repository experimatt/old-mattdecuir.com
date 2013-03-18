<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Google Company Valuation</title>
    <link href="../common/logo.ico" rel="Shortcut Icon"  />
    <link href="../common/styles.css" rel="stylesheet" type="text/css" />
    <meta name="keywords" content="Matt Decuir, Matthew Decuir, Matthew, Mathew Decuir, Mathew, Matt, Decuir, mattdecuir.com, mattdecuir, Matthew S. Decuir, Matthew S Decuir, Matt S. Decuir, Matt S Decuir, Matthew Strauss Decuir, Matt Strauss Decuir, Strauss, Web Development, Consulting, Bellevue, Washington, Western, Western Washington University, WWU, Western, Bellingham, Google, Google Valuation, Google Analysis, Google Report, Google Fundamental Analysis, Fundamental Analysis, web developer" />
<meta name="description" content="This is a personal website for Matt Decuir which includes a variety of cool information, reports, links, and pictures.  You might even learn something new!" />

</head>
<body>
<center>
<div id="container" align="center">

<!-- Start the header section -->
<div id="gheader" -->
    <!--#include file="includes/header.inc"-->
</div>
<!-- end the header section -->


<!-- start the wrapper section -->
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td id="tgmenu">
    <!-- start the menu section -->
    <div id="gmenu">
        <!--#include file="includes/menu.inc"-->
    </div>
    <!-- end the menu section -->
</td>
<td>
    <!-- start the main section -->
    <div id="main" style="width: 620px;">
        <h2>Google Company Analysis</h2>
        <div class="mainsumm">Prepared by Matt Decuir</div><br />    
        <div class="mainhead">Company Valuation</div>

        <div class="mainreport">
                    Google’s market value is very close to the
                    predicted valuation determined in this report.&nbsp; Google’s
                    valuation is determined by their projected free cash flows, which are expected to
                    be positive for the next 20 years.&nbsp; 
                    These free cash flows are displayed in <span class="mainlink">
                    <a href="exhibit13.aspx" target="_blank">Exhibit 13</a></span>
                    , starting at $2.373 billion in 2007, and ending at $50.264 billion in
                    20 years.&nbsp; The projected free cash flows
                    for 2026 are used for the continuing free cash flows value in the calculation Google’s
                    valuation.&nbsp; <span class="mainlink"><a href="exhibit14.aspx" target="_blank">Exhibit 14</a></span>
                     shows that Google’s stock should be valued at $502.32, according
                    to the present value of free cash flows.&nbsp; 
                    As of June 12th, 2007, Google’s stock closed at $504.77, which shows that the market has overvalued their
                    stock by $1.45, which is less than 0.3% of its current price.&nbsp;
                    This shows that although Google has potential growth for the future, its
                    market price of slightly over $500 accurately reflects the value of the company.
                    &nbsp; This exhibit also shows the assumptions
                    used to value Google’s shares.&nbsp; Google’s
                    beta was calculated using weekly returns, starting the week of their IPO on
                    August 19th, 2004, and ending on June 8, 2007.&nbsp; 
                    These returns were compared to the S&amp;P 500’s returns, resulting in an 
                    unadjusted beta of 1.293, with a standard
                    error of 0.290.&nbsp; Although the standard
                    error of Google’s beta is slightly high because it only went public three years
                    ago, the industry beta, which is the average of Microsoft and Yahoo’s adjusted betas,
                    is only slightly higher than Google’s adjusted beta of 1.20.&nbsp;
                    Because the two beta values are so close, and despite the high standard error,
                    this report assumes a beta value of 1.20 for Google.&nbsp;
                    This beta, paired with a risk free rate of 5.24%, the current t-bill rate,
                    and a market risk premium of 7%, results in a CAPM required rate of return of 13.61%.&nbsp; 
                    The CAPM rate is input into the weighted
                    average cost of capital equation, and because Google has no debt, the weighted average
                    cost of capital is equivalent to the CAPM value of 13.61%.&nbsp;
                    As a result, the present value of free cash flows discounted at the weighted
                    average cost of capital is $109.075 billion for the next 20 years, while the present
                    value of continuing free cash flows amounts to $47.734 billion.&nbsp;
                    These present values result in a common equity value of $156.809 billion,
                    which, when divided by the 311.55 million shares outstanding results in a value
                    per share of $503.32.&nbsp; Crystal Ball analysis of Google’s stock price, 
                    <span class="mainlink"><a href="exhibit15.aspx" target="_blank">Exhibit 15</a></span>,
                    shows that their share price may vary greatly.&nbsp;
                    The minimum value of the share price was $89.35, while the maximum was $33,495.01
                    per share.&nbsp; Also, the mean price in
                    5000 trials was $719.65, while the median share price was $476.85.&nbsp;
                    <span class="mainlink"><a href="exhibit16.aspx" target="_blank">Exhibit 16</a></span> shows the assumptions
                    and the associated standard deviation used for this Crystal Ball analysis.&nbsp;
                    Due to the high uncertainty of Google’s future, a significant standard deviation
                    of two was used for lambda, the number of years until supernatural growth ceases.&nbsp;
                     Overall, Google’s share price is currently
                    appropriately valued, only $1.45 overvalued as compared to the valuation from this
                    analysis.
            </div>

    <!-- end the main section -->

</td>
</tr>
</table>
<!-- end the wrapper section -->

<!-- start the footer section -->
<div id="gfooter">
<!--#include file="includes/footer.inc"-->
</div>
<!-- end the footer section -->

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
