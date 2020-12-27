#SignUp.pl

#!/usr/bin/perl
use CGI;
$query   = new CGI;
$username = $query->param("username");
$submit = $query->param("submit");

$username =~ s/^\s*(\S*)\s*$/$1/;
$username =~ s/;|>|>>|<|\*|\?|\&|\|//g;


if ( $submit eq "signup" ) {
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
  $cmd = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom SignUp '$username' ";
  system( $cmd );
  #print($cmd);

print <<EndofHTML;
        <form align = "center">
	<br>
         <input type="submit" value=" Go Back " onclick="history.go(-2);return false;" />
        </form>
        </div>
	
   </body>
  </html>
EndofHTML

}




 	




