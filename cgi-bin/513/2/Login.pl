#Login.pl

#!/usr/bin/perl
use CGI;
$query   = new CGI;
$username = $query->param("username");
$password = $query->param("password");

$username =~ s/^\s*(\S*)\s*$/$1/;
$username =~ s/;|>|>>|<|\*|\?|\&|\|//g;
$password =~ s/^\s*(\S*)\s*$/$1/;
$password =~ s/;|>|>>|<|\*|\?|\&|\|//g;


if ( $username eq "Admin" && $password eq "saroj123" ) {
  print ( "Content-type: text/html\n\n" );
  system( "/bin/cat ../../../513/2/Admin.html" );

}


elsif ( $password eq "saroj123" ) {
  print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
	<html>
	<head>
	<title>Sign Up</title>
	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue">
	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - SEECS</p>
	 </div>
	</html>
EndofHTML

  # Compose a Java command.
  $cmd = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom Login '$username' ";
  system( $cmd );
  #print($cmd);

}


else {
  print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
<html>
<head>
  <link rel="stylesheet" type="text/css" href="http://undcemcs02.und.edu/~saroj.mishra/513/2/style.css" />
  <link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
<style>
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}
a:visited {
  color: Green;
  background-color: transparent;
  text-decoration: none;
}
a:hover {
  color: red;
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
  <title>Sign In </title>

<div class="login-page">
  <div class="form-mainpage">
<legend> <script>alert('Username or password is inorrect, try again!')</script> </legend>

	<div class="login">
	<h3 align = "center" style="color:white;">Sign In</h3><br> 
   	<form method="post" action="http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Login.cgi">
    	<input type="text" name="username" placeholder="Username" required="required" />
        <input type="password" name="password" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Login</button>
    	</form><br>
	<p align= "center" style="color:white; position:bottom;">Don't have an account? <a href="http://undcemcs02.und.edu/~saroj.mishra/513/2/SignUp.html">Sign Up</a></p>
	</div>
    </div>
</div>

<div style="position: relative; font-size:80%">
  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – University of North Dakota, SEECS</p>
 </div>

</html>
EndofHTML

}
