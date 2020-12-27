#Customer.pl
#!/usr/bin/perl
use CGI;
$query   = new CGI;
$id = $query->url_param("c_id");

# Print HTML.
 print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
<!DOCTYPE html>
<html>
<head>
<title>Customer Interface</title>

<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">

<style>
a:link {
  color: red;
  background-color: transparent;
  text-decoration: none;
}
a:visited {
  color: white;
  background-color: transparent;
  text-decoration: none;
}
a:hover {
  color: black;
  background-color: transparent;
  text-decoration: underline;
}
a:active {
  color: yellow;
  background-color: transparent;
  text-decoration: underline;
}
</style>

</head>

<body  style="background-color:#009a44;">
 
<h1 align= "center" style="color:#00008B; font-family:verdana; font-size:200%; background-color:LightGray; border: 2px solid black; padding: 2px;"><b> UND Online Bookstore: Customer Interface</b></h1><br><br>

<a href='http://undcemcs02.und.edu/~saroj.mishra/513/2/index.html'>Logout</a>

<br> <br> <br>

<div align = "center" >
<h2><u>Manage Your Content</u></h2>
 <br>
 <br>

<form style="font-size:130%;" method="post" action="../../../cgi-bin/513/2/MainCustomer.cgi?c_id=$id" > 
  <input type="submit" name="act" value="Search Book" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" name="act" value="List Books" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" name="act" value="View Your Profile" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" name="act" value="Help" />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <br><br><br>
 Password:
 <input type="password" name="password" placeholder="Password" size="15"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Interface:
 <input type="text" name="interface" placeholder="Number (1-10)" size="10" />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
 <input type="submit" name="act" value="Display Source" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="submit" name ="act" value="Reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</form>
</div>
</body>

 <div style="position: relative; font-size:80%">
  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – University of North Dakota - SEECS</p>
 </div>

</html>

EndofHTML
