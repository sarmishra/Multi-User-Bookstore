#!/usr/bin/perl
use CGI;
$query  = new CGI;
$c_id    = $query->url_param( 'c_id' );

 # Print HTML.
  print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
	<html>
	<head>
	<title>View Authors</title>
	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue">
	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
	 </div>
	</html>
EndofHTML

print <<EndofHTML;
        <form align = "left">
	<br><br>
         <input type="submit" value=" Go Back " onclick="history.go(-1);return false;" />
        </form>
        </div>
	<form align = "left">
         <input type="submit" value=" Go Home " onclick="history.go(-2);return false;" />
        </form>
        </div>
   </body>
  </html>
EndofHTML

 # Compose a Java command.
     $cmd  = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom  ViewCustomer '$c_id' ";
     system( $cmd );
     #print($cmd);
	



