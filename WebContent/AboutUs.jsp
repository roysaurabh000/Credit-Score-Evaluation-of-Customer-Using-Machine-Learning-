<!Doctype HTML>
<html>
<head><title>About Us</title>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">

<style>
  p{
    color:purple;
    font-size: 20px;
  }
.active {
  background-color: #4CAF50;
}
#box {
text-align:center;
border:5px solid;
padding:10px;
width:120px;
box-shadow:6px 6px red;
background-color:yellow;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 18px 18px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
</style>
<body>


 <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-176338996-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-176338996-1');
</script>

</head>
<body style="background-image:linear-gradient(#00FFFF,#87CEFA)">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">CREDIT KNIGHT</a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="home2.jsp">Home</a></li>
       <li class="" ><a href="AboutUs.jsp">About Us</a></li>
       <li class="" ><a href="scorecalc.jsp">Credit Score</a></li>
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

  <p >
<strong>
Dear Guest,<br>


Thank you for your continued support and the confidence that you have placed in us. As we build the foundation of success, we completely recognize the trust you place in us and with your continuous support, we assure to maintain our best-in-class service.<br><br>

Credit Scoring is used very often as the main tool for risk management in financing institutions. Credit Scoring calculation using Machine Learning Algorithm is specifically designed platform for an individual to check its Credit worthiness and check whether he/she
is eligible for a particular loan that is to calculate the credit risk. The user will input
all its basic and financial details required to calculate the credit score, accordingly
our designed model will calculate the credit risk and credit worthiness in the form
of a credit score and give out the same as output.
</strong>
</p>
</html>
