#Homepage

#!/usr/bin/perl
use CGI;
$query  = new CGI;
$isbn = $query->url_param( 'isbn' );


print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
	<html>
	<head>
	<title>Rate Books</title>
	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue">

        <form align = "left">
	<br>
         <input type="submit" value=" Go Back " onclick="history.go(-1);return false;" />
        </form>
        </div>
	<br>

  	<h2 align= center><u> Rate the Book </u></h2><br>
	<form align ="center" style="font-size:120%;" method="post" action="http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Rate.cgi?isbn=$isbn">
	 <p><u>Book ISBN Number:</u> $isbn</p> <br>
    	 Rating:&nbsp;
  	<input type="radio" name="rating"  value="1" >1 &nbsp;&nbsp;&nbsp;
  	<input type="radio" name="rating"  value="2" >2 &nbsp;&nbsp;&nbsp;
  	<input type="radio" name="rating"  value="3"  >3 &nbsp;&nbsp;&nbsp;
  	<input type="radio" name="rating"  value="4" >4 &nbsp;&nbsp;&nbsp;
  	<input type="radio" name="rating"  value="5" >5 &nbsp;&nbsp;&nbsp;
	<br><br><br>
  	<input type="submit" name="submit" value="Submit Rating" />&nbsp;&nbsp;&nbsp;
  	<input type="reset"                  value="Clear" />&nbsp;
	</form>

	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
	 </div>
	</html>
EndofHTML

