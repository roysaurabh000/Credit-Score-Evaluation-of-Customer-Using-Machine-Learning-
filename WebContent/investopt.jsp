<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<title>Credit Score</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">


<style>
body  {
   background-image: url("");
   /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: repeat;
  background-size: cover;
 
}

</style>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-store");
response.setHeader("Expires","0");
if(session.getAttribute("fname")==null)
	response.sendRedirect("login.jsp");
%>
<nav class="navbar navbar-inverse">

  <div class="container-fluid">
  
  
    <a class="navbar-brand" href="#">
          <img src="kn2.jpg" alt="" width="30" height="30">
        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="navbar-header">
      <a class="navbar-brand" href="#">CREDIT KNIGHT</a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="home2.jsp">Home</a></li>
       <li class="" ><a href="AboutUs.jsp">About Us</a></li>
       <li class="" ><a href="scorecalc.jsp">Credit Score</a></li>
       <li class="" ><a href="feat.jsp">Feature</a></li>
       <!-- 
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Features<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li class="" ><a href=".jsp">Credit Scorer </a></li>
          <li class="" id="info"><a href="TaskAdd.jsp">Investment Options</a></li>
          <li class=""><a href="#"></a></li>
        </ul>
      </li>
            -->
    </ul>
     <ul class="nav navbar-nav navbar-right">
       <li><a href="#"><span class="glyphicon glyphicon-user" ></span> <%=session.getAttribute("fname")%></a></li>
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
  </ul>
  </div>
</nav>




<h1 class="text-center" ><kbd > INVESTMENT OPTIONS</kbd></h1>
<!-- <h1><a href="" class="text-white bg-dark">YOUR CREDIT SCORE:</a></h1> -->

<center>
<%

int k = Integer.parseInt(request.getParameter("score"));
k=k/100;
//out.println(k);
int x = Integer.parseInt(request.getParameter("sco"));

 if(x<400)
{
out.println("<h1>The credit score entered is below the valid range. </h1>");
}
if(x>900)
{
out.println("<h1>The credit score entered is above the valid range. </h1>");
}
	
if(x>600 && x<=900)
{

%>

<% if(k<300)
{out.println("<h1>The funds for investment should be equal to or above 30,000. </h1>");
}%>
	
	
	<%if(300<=k && k<700){%>
		
		<table class="table">
    <thead>
      <tr>
        <th>Investment Options</th>
        <th>Approx return per year </th>
        <th>Years taken to double the investment</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> Monthly Income Scheme of the Post Office
MIS investment option best for generating desired monthly cash flows.

For example, if you invest Rs. 4.5 Lacs (individually) for 5 years at the present rate of 7.7% p.a.Then you get a monthly income of Rs. 2,888 per month.

You can start by investing Rs. 1500 and the maximum investment can be Rs. 4.5 Lacs (individually) or Rs. 9 Lacs (jointly).</td>
        <td> 7.7%</td>
        <td> 9.35 years</td>
        
      </tr>      
      <tr class="success">
        <td> Bonds-Long term debt investments can generate steady returns over inflation. Bond investments carry interest rate risk.</td>
        <td>7% to 10%</td>
        <td> 7.2 years</td>
      </tr>
      <tr class="danger">
        <td>Tax Saving FD-The option gives complete capital protection with additional interest income for 5 years at a similar rate to 5 years FD.</td>
        <td> 7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="info">
        <td>National Savings Certificate (NSC)
Is a low risk, fixed income instrument and can be easily opened at any post office. National Savings Certificate comes with two fixed maturity periods of 5 years and 10 years.</td>
        <td>7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="warning">
        <td>Real Estate – Residential
The investment in residential real estate generates regular rental income and appreciation. All with modest amount of risk as compared to equity investments.</td>
        <td>11%</td>
        <td>6.5 years</td>
      </tr>
      <tr class="active">
        <td>Gold
Over the years, investment in gold has given consistent returns of around 10% beating inflation and providing diversification. A better way to invest in Gold is through a gold mutual fund, Gold ETF and gold bonds.</td>
        <td>10%</td>
        <td>7.2 years</td>
      </tr>
      <tr class="active">
        <td>Direct Equity and Equity-Oriented Mutual Funds
Equity is the best option for persons looking for growth and building wealth. The returns on individual stocks are high (>20%) for fundamentally strong and growing companies over a longer period of time.</td>
        <td>16 to 18%</td>
        <td>4 to 4.5 years</td>
      </tr><tr class="active">
        <td> Recurring Deposit (RD)
The returns generated are almost the same as a fixed deposit for a 3 year period.</td>
        <td>7%</td>
        <td>10.3 years</td>
      </tr><tr class="active">
        <td>Fixed Deposit
Returns on a 3-year FDs vary from bank to bank, usually in a range of 6.5% to 8%. Also there are no associated tax benefits in this investment option.</td>
        <td> 7%</td>
        <td>10.3 years</td>
      </tr>
      <tr class="info">
        <td>Mutual Funds
Mutual funds are the safest and the most convenient way of investing in the markets when you do not have the time and expertise. </td>
               <td>16%</td>
        <td>4.5 years</td>
      </tr>
      <tr class="info">
        <td> Initial Public Offer (IPO)
The best part of investing in IPO is that the money gets blocked only for 7 to 15 days. Prudent investment in a good company coming out with IPO can fetch returns as high as 20-25% over a period of time. </td>
               <td>18%</td>
        <td>4 years</td>
      </tr>
      <tr class="info">
        <td>Direct Equity Investment
All the equity investments carry higher risks and hence are also capable of generating very high returns. Opt for equity investment option if you are comfortable losing as much as 50% of the capital. </td>
               <td>7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="info">
        <td>Public Provident Fund (PPF)
Apart from your regular pension contribution, an investment in PPF account can save lots of tax as all the deposits made are deductible under section 80C. </td>
               <td>Returns are tax free</td>
        <td>9 years</td>
      </tr>
    </tbody>
  </table>
	
	
	<%}if(700<=k && k<950){%>
			
		
		<table class="table">
    <thead>
      <tr>
        <th>Investment Options</th>
        <th>Approx return per year </th>
        <th>Years taken to double the investment</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> Monthly Income Scheme of the Post Office
MIS investment option best for generating desired monthly cash flows.

For example, if you invest Rs. 4.5 Lacs (individually) for 5 years at the present rate of 7.7% p.a.Then you get a monthly income of Rs. 2,888 per month.

You can start by investing Rs. 1500 and the maximum investment can be Rs. 4.5 Lacs (individually) or Rs. 9 Lacs (jointly).</td>
        <td> 7.7%</td>
        <td> 9.35 years</td>
        
      </tr>      
      
      <tr class="active">
        <td>Gold
Over the years, investment in gold has given consistent returns of around 10% beating inflation and providing diversification. A better way to invest in Gold is through a gold mutual fund, Gold ETF and gold bonds.</td>
        <td>10%</td>
        <td>7.2 years</td>
      </tr>
      <tr class="active">
        <td>Direct Equity and Equity-Oriented Mutual Funds
Equity is the best option for persons looking for growth and building wealth. The returns on individual stocks are high (>20%) for fundamentally strong and growing companies over a longer period of time.</td>
        <td>16 to 18%</td>
        <td>4 to 4.5 years</td>
      </tr><tr class="active">
        <td> Recurring Deposit (RD)
The returns generated are almost the same as a fixed deposit for a 3 year period.</td>
        <td>7%</td>
        <td>10.3 years</td>
      </tr><tr class="active">
        <td>Fixed Deposit
Returns on a 3-year FDs vary from bank to bank, usually in a range of 6.5% to 8%. Also there are no associated tax benefits in this investment option.</td>
        <td> 7%</td>
        <td>10.3 years</td>
      </tr>
      <tr class="info">
        <td>Mutual Funds
Mutual funds are the safest and the most convenient way of investing in the markets when you do not have the time and expertise. </td>
               <td>16%</td>
        <td>4.5 years</td>
      </tr>
      <tr class="info">
        <td> Initial Public Offer (IPO)
The best part of investing in IPO is that the money gets blocked only for 7 to 15 days. Prudent investment in a good company coming out with IPO can fetch returns as high as 20-25% over a period of time. </td>
               <td>18%</td>
        <td>4 years</td>
      </tr>
       <tr class="success">
        <td> Bonds-Long term debt investments can generate steady returns over inflation. Bond investments carry interest rate risk.</td>
        <td>7% to 10%</td>
        <td> 7.2 years</td>
      </tr>
      <tr class="danger">
        <td>Tax Saving FD-The option gives complete capital protection with additional interest income for 5 years at a similar rate to 5 years FD.</td>
        <td> 7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="info">
        <td>National Savings Certificate (NSC)
Is a low risk, fixed income instrument and can be easily opened at any post office. National Savings Certificate comes with two fixed maturity periods of 5 years and 10 years.</td>
        <td>7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="warning">
        <td>Real Estate – Residential
The investment in residential real estate generates regular rental income and appreciation. All with modest amount of risk as compared to equity investments.</td>
        <td>11%</td>
        <td>6.5 years</td>
      </tr>
      <tr class="active">
        <td>Gold
Over the years, investment in gold has given consistent returns of around 10% beating inflation and providing diversification. A better way to invest in Gold is through a gold mutual fund, Gold ETF and gold bonds.</td>
        <td>10%</td>
        <td>7.2 years</td>
      </tr>
      <tr class="info">
        <td>Direct Equity Investment
All the equity investments carry higher risks and hence are also capable of generating very high returns. Opt for equity investment option if you are comfortable losing as much as 50% of the capital. </td>
               <td>7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="info">
        <td>Public Provident Fund (PPF)
Apart from your regular pension contribution, an investment in PPF account can save lots of tax as all the deposits made are deductible under section 80C. </td>
               <td>Returns are tax free</td>
        <td>9 years</td>
      </tr>
    </tbody>
  </table>	
  <%}if(950<=k ){%> 
		
		<table class="table">
    <thead>
      <tr>
        <th>Investment Options</th>
        <th>Approx return per year </th>
        <th>Years taken to double the investment</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> Monthly Income Scheme of the Post Office
MIS investment option best for generating desired monthly cash flows.

For example, if you invest Rs. 4.5 Lacs (individually) for 5 years at the present rate of 7.7% p.a.Then you get a monthly income of Rs. 2,888 per month.

You can start by investing Rs. 1500 and the maximum investment can be Rs. 4.5 Lacs (individually) or Rs. 9 Lacs (jointly).</td>
        <td> 7.7%</td>
        <td> 9.35 years</td>
        
      </tr>      
      <tr class="success">
        <td> Bonds-Long term debt investments can generate steady returns over inflation. Bond investments carry interest rate risk.</td>
        <td>7% to 10%</td>
        <td> 7.2 years</td>
      </tr>
      <tr class="danger">
        <td>Tax Saving FD-The option gives complete capital protection with additional interest income for 5 years at a similar rate to 5 years FD.</td>
        <td> 7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="info">
        <td>National Savings Certificate (NSC)
Is a low risk, fixed income instrument and can be easily opened at any post office. National Savings Certificate comes with two fixed maturity periods of 5 years and 10 years.</td>
        <td>7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="warning">
        <td>Real Estate – Residential
The investment in residential real estate generates regular rental income and appreciation. All with modest amount of risk as compared to equity investments.</td>
        <td>11%</td>
        <td>6.5 years</td>
      </tr>
      <tr class="active">
        <td>Gold
Over the years, investment in gold has given consistent returns of around 10% beating inflation and providing diversification. A better way to invest in Gold is through a gold mutual fund, Gold ETF and gold bonds.</td>
        <td>10%</td>
        <td>7.2 years</td>
      </tr>
      <tr class="active">
        <td>Direct Equity and Equity-Oriented Mutual Funds
Equity is the best option for persons looking for growth and building wealth. The returns on individual stocks are high (>20%) for fundamentally strong and growing companies over a longer period of time.</td>
        <td>16 to 18%</td>
        <td>4 to 4.5 years</td>
      </tr><tr class="active">
        <td> Recurring Deposit (RD)
The returns generated are almost the same as a fixed deposit for a 3 year period.</td>
        <td>7%</td>
        <td>10.3 years</td>
      </tr><tr class="active">
        <td>Fixed Deposit
Returns on a 3-year FDs vary from bank to bank, usually in a range of 6.5% to 8%. Also there are no associated tax benefits in this investment option.</td>
        <td> 7%</td>
        <td>10.3 years</td>
      </tr>
      <tr class="info">
        <td>Mutual Funds
Mutual funds are the safest and the most convenient way of investing in the markets when you do not have the time and expertise. </td>
               <td>16%</td>
        <td>4.5 years</td>
      </tr>
      <tr class="info">
        <td> Initial Public Offer (IPO)
The best part of investing in IPO is that the money gets blocked only for 7 to 15 days. Prudent investment in a good company coming out with IPO can fetch returns as high as 20-25% over a period of time. </td>
               <td>18%</td>
        <td>4 years</td>
      </tr>
      <tr class="info">
        <td>Direct Equity Investment
All the equity investments carry higher risks and hence are also capable of generating very high returns. Opt for equity investment option if you are comfortable losing as much as 50% of the capital. </td>
               <td>7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="info">
        <td>Public Provident Fund (PPF)
Apart from your regular pension contribution, an investment in PPF account can save lots of tax as all the deposits made are deductible under section 80C. </td>
               <td>Returns are tax free</td>
        <td>9 years</td>
      </tr>
      <tr class="success">
        <td> Bonds-Long term debt investments can generate steady returns over inflation. Bond investments carry interest rate risk.</td>
        <td>7% to 10%</td>
        <td> 7.2 years</td>
      </tr>
      <tr class="danger">
        <td>Tax Saving FD-The option gives complete capital protection with additional interest income for 5 years at a similar rate to 5 years FD.</td>
        <td> 7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="info">
        <td>National Savings Certificate (NSC)
Is a low risk, fixed income instrument and can be easily opened at any post office. National Savings Certificate comes with two fixed maturity periods of 5 years and 10 years.</td>
        <td>7.6%</td>
        <td>9.47 years</td>
      </tr>
      <tr class="warning">
        <td>Real Estate – Residential
The investment in residential real estate generates regular rental income and appreciation. All with modest amount of risk as compared to equity investments.</td>
        <td>11%</td>
        <td>6.5 years</td>
      </tr>
      <tr class="active">
        <td>Gold
Over the years, investment in gold has given consistent returns of around 10% beating inflation and providing diversification. A better way to invest in Gold is through a gold mutual fund, Gold ETF and gold bonds.</td>
        <td>10%</td>
        <td>7.2 years</td>
      </tr>
    </tbody>
  </table>
  	<% }
  	}
else if(x>=400 && x<=600)
	out.println("<h1>YOUR CREDIT SCORE is low it will be a problem in validating your KYC during INVESTMENTS</h1>");
  	%>
 <!-- <img src="sx.jpg" alt="Diet image here!" id="diet">  -->
</center>

</body>
</html>