
#Homepage

#!/usr/bin/perl
use CGI;
$query  = new CGI;
$c_id = $query->url_param( 'c_id' );
$act    = $query->param( 'act' );
$rating = $query->param( 'rating' );

$rating =~ s/^\s*(\S*)\s*$/$1/;
$rating=~ s/;|>|>>|<|\*|\?|\&|\|//g;


if ( $act eq "Search Book" ) {
  # Print HTML.
  print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
	<html>
	<head>
	<title>List Customers</title>
	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue">
        <p align= left><a href="http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Customer.cgi?c_id=$c_id">Go to the Homepage</a></p>
        
	<form align = "left">
         <input type="submit" value=" Go Back " onclick="history.go(-1);return false;" />
        </form>
        </div>

	<form align ="left" method="post" action="http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Descending.cgi?c_id=$c_id&rating=$rating">
  	<input type="submit" name="act" value="Results in Descending" />&nbsp;
	</form> 
	<form align ="left" method="post" action="http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Ascending.cgi?c_id=$c_id&rating=$rating">
  	<input type="submit" name="act" value="Results in Ascending" />&nbsp;
	</form> 
	
	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
	 </div>
	</html>
EndofHTML

# Compose a Java command.
     $cmd  = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom  SearchList '$rating' '$c_id' ";
     system($cmd);
     #print($cmd);
	
	
}
