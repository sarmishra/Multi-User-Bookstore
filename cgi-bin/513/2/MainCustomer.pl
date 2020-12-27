#Homepage

#!/usr/bin/perl
use CGI;
$query  = new CGI;
$c_id = $query->url_param( 'c_id' );
$act    = $query->param( 'act' );
$password = $query->param( 'password' );
$interface = $query->param( 'interface' );

$password =~ s/^\s*(\S*)\s*$/$1/;
$password=~ s/;|>|>>|<|\*|\?|\&|\|//g;



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
       
        <form align = "left">
	<br>
         <input type="submit" value=" Go Back " onclick="history.go(-1);return false;" />
        </form>
        </div>
 	<p align= left><a href="http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Customer.cgi?c_id=$c_id">Go to the Homepage</a></p>
	<br><br>
      	<form align ="center" method="post" action="http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Search.cgi?c_id=$c_id">
  	<h2><u> Search Book By Rating </u></h2> <br>
   	Enter Rating:
  	<input type="text" name="rating" required="required" placeholder="Enter 1-5" size="30" /><br><br>
  	<input type="submit" name="act" value="Search Book" />&nbsp;
  	<input type="reset"                  value="Clear" />&nbsp;
	</form> 
	
	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
	 </div>
	</html>
EndofHTML
	
}



elsif ( $act eq "List Books" ) {
  # Print HTML.
  print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
	<html>
	<head>
	<title>List Books</title>
	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue">
       <form align = "left">
	<br>
         <input type="submit" value=" Go Back " onclick="history.go(-1);return false;" />
        </form>
        </div>

	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
	 </div>
	</html>
EndofHTML


 # Compose a Java command.
     $cmd  = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom  ListBooks ";
     system( $cmd );	
}



elsif ( $act eq "View Your Profile" ) {
  # Print HTML.
  print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
	<html>
	<head>
	<title>Your Profile </title>
	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue"><br>
        <p align= left><a href="http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Customer.cgi?c_id=$c_id">Go to the Homepage</a></p>

        <form align = "left">
	<br>
         <input type="submit" value=" Go Back " onclick="history.go(-1);return false;" />
        </form>
        </div>

	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
	 </div>
	</html>
EndofHTML


 # Compose a Java command.
     $cmd  = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom  YourProfile '$c_id' ";
     system( $cmd );
     #print($cmd);
}



# Source code display part
elsif ($act eq "Display Source"){
   if ($password eq "saroj123"){
     print ( "Content-type: text/plain\n\n" );
     if ($interface == 1){
     system( "/bin/cat ../../../513/2/index.html; echo '\n\n\n\n'; /bin/cat Login.cgi; echo '\n\n\n\n'; /bin/cat Login.pl; echo '\n\n\n\n'; /bin/cat Login.java ");
	}
     elsif ( $interface == 2 ) {
     system( "/bin/cat ../../../513/2/SignUp.html; echo '\n\n\n\n'; /bin/cat SignUp.cgi; echo '\n\n\n\n'; /bin/cat SignUp.pl; echo '\n\n\n\n'; /bin/cat SignUp.java");
	}
     elsif ( $interface == 3 ) {
     system( " /bin/cat Customer.cgi; echo '\n\n\n\n'; /bin/cat Customer.pl; echo '\n\n\n\n'; /bin/cat MainCustomer.cgi; echo '\n\n\n\n'; /bin/cat MainCustomer.pl");
	}
    elsif ( $interface == 4 ) {
     system( " /bin/cat Search.cgi; echo '\n\n\n\n'; /bin/cat Search.pl; echo '\n\n\n\n'; /bin/cat SearchList.java");
	}
     elsif ( $interface == 5 ) {
     system( "/bin/cat ViewBook.cgi; echo '\n\n\n\n'; /bin/cat ViewBook.pl; echo '\n\n\n\n'; /bin/cat ViewBook.java");
	}
    elsif ( $interface == 6 ) {
     system( "/bin/cat YourDetails.cgi; echo '\n\n\n\n'; /bin/cat YourDetails.pl; echo '\n\n\n\n'; /bin/cat YourDetails.java");
	}
    elsif ( $interface == 7 ) {
     system( "/bin/cat SearchRate.cgi; echo '\n\n\n\n'; /bin/cat SearchRate.pl; echo '\n\n\n\n'; /bin/cat Rate.cgi; echo '\n\n\n\n'; /bin/cat Rate.pl; echo '\n\n\n\n'; /bin/cat Rank.java ");
	}
    elsif ( $interface == 8 ) {
     system( "/bin/cat Ascending.cgi; echo '\n\n\n\n'; /bin/cat Ascending.pl; echo '\n\n\n\n'; /bin/cat Ascending.java; echo '\n\n\n\n'; /bin/cat Descending.cgi; echo '\n\n\n\n'; /bin/cat Descending.pl; echo '\n\n\n\n'; /bin/cat Descending.java ");
	}
    elsif ( $interface == 9 ) {
     system( "/bin/cat Purchase.cgi; echo '\n\n\n\n'; /bin/cat Purchase.pl; echo '\n\n\n\n'; /bin/cat Purchase.java" );
	}  
    elsif ( $interface == 10 ) {
     system( "/bin/cat ListBooks.java; echo '\n\n\n\n'; /bin/cat YourProfile.java; echo '\n\n\n\n'; /bin/cat Reset.java" );
	}    

    elsif ( $interface eq "help" ) {
     system( "/bin/cat ../../../513/1/Help.html;" );
	}

    else {
      print( "\n\n\n  No such interface: $interface" );
    }

}

else {
  print( "Content-type: text/html\n\n" );
  print( "<br><br> <h3 align = center>Enter a correct password!</h3>" );

print <<EndofHTML;
	<html>
	<head>
	<title>Incorrect Password</title>
	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue">
	<form align = "center">
	<br><br><br>
         <input type="submit" value=" Go Back " onclick="history.go(-1);return false;" />
        </form>
        </div>

	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – University of North Dakota - SEECS</p>
	 </div>
	</html>
EndofHTML

}
}


elsif ( $act eq "Reset" ) {
  # Print HTML.
  print ( "Content-type: text/html\n\n" );

print <<EndofHTML;
	<html>
	<head>
	<title>Reset All Data</title>
	<link rel="icon" type="image/jpg" sizes="50*50" href="https://www.fccnn.com/sports/article785186.ece/alternates/LANDSCAPE_560/3221322%2Bund-sports-logo-words.jpg">
	</head>
	<body  style="background-color:Skyblue">
	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
	 </div>
	</html>
EndofHTML


 # Compose a Java command.
     $cmd  = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom  Reset ";
     system( $cmd );
	

print <<EndofHTML;
        <form align = "center">
	<br><br><br>
         <input type="submit" value=" Go Back " onclick="history.go(-1);return false;" />
        </form>
        </div>
   </body>
  </html>
EndofHTML

}


elsif ( $act eq "Help" ) {
  # Print HTML.
  print ( "Content-type: text/html\n\n" );
  system( "/bin/cat ../../../513/2/Help.html" );

}

else {
  print( "Content-type: text/html\n\n" );
  print( "<br><br> <h3 align = center> No such option: <em>$act</em> " );
}


