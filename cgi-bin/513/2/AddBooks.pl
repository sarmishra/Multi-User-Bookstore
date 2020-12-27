#!/usr/bin/perl
use CGI;
$query  = new CGI;
$isbn = $query->param("isbn");
$title = $query->param("title");
$price = $query->param("price");
$rating = $query->param("rating");
$submit = $query->param("submit");

if ( $submit eq "Add Book" ) {
  # Print HTML.
  print ( "Content-type: text/html\n\n" );

  print <<EndofHTML;
		
	<!DOCTYPE html>
	<html>
	<head>
	<title>Enter Books</title>

	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue">

	<form align = "center">
	<br><br><br><br>
	<h3> Successfully added Book. </h3>
	<br><br>
         <input type="submit" value=" Go Back " onclick="history.go(-1);return false;" />
        </form>

	</body>
 	<div style="position: relative; font-size:80%">
  	<p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
 	</div>
	</html>

EndofHTML

  # Remove leading and trailing spacing.
  $isbn =~ s/^\s*(\S*)\s*$/$1/;
  # For security, remove some Unix metacharacters.
  $isbn =~ s/;|>|>>|<|\*|\?|\&|\|//g;
  # Remove leading and trailing spacing.
  $title =~ s/^\s*(\S*)\s*$/$1/;
  # For security, remove some Unix metacharacters.
  $title =~ s/;|>|>>|<|\*|\?|\&|\|//g;
 

  # Compose a Java command.
  $cmd  = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom AddBooks '$isbn' '$title' '$price' '$rating'  ";
  system( $cmd );
  #print($cmd);

  # Compose a Java command.
  $cmd  = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom Rank '$isbn' '$rating'  ";
  system( $cmd );
  #print($cmd);


}

	







