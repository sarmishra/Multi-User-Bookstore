#Homepage

#!/usr/bin/perl
use CGI;
$query  = new CGI;
$isbn = $query->url_param( 'isbn' );
$rating = $query->param( 'rating' );
$submit = $query->param( 'submit' );

if ($submit eq "Submit Rating") {
print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
	<html>
	<head>
	<title>Submit Rating</title>
	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue"><br>
        <form align = "center">
	<br><br><br>
	<h3> Successfully submitted the rating! </h3>
	<br><br>
         <input type="submit" value=" Go Customer Homepage " onclick="history.go(-4);return false;" />
        </form>

	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
	 </div>
	</html>
EndofHTML

# Compose a Java command.
     $cmd  = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom  Rank '$isbn' '$rating' ";
     system($cmd);
     #print($cmd);


}