#Homepage

#!/usr/bin/perl
use CGI;
$query  = new CGI;
$act    = $query->param( 'act' );
$password = $query->param( 'password' );
$interface = $query->param( 'interface' );

$password =~ s/^\s*(\S*)\s*$/$1/;
$password=~ s/;|>|>>|<|\*|\?|\&|\|//g;


#Enter Books
if ( $act eq "Enter Book" ) {
  # Print HTML.
  print ( "Content-type: text/html\n\n" );
  system( "/bin/cat ../../../513/2/AddBooks.html" );

}

 
elsif ( $act eq "List Customers" ) {
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

	</body>
	 <div style="position: relative; font-size:80%">
	  <p style="position: fixed; bottom: 0; width:100%; text-align: center">© 2020 Saroj Mishra – Grand Forks, ND - EECS</p>
	 </div>
	</html>
EndofHTML


 # Compose a Java command.
     $cmd  = "/usr/bin/java -Djava.security.egd=file:/dev/./urandom  ListCustomers ";
     system( $cmd );
	
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


# Source code display part
elsif ($act eq "Display Source"){
   if ($password eq "saroj123"){
     print ( "Content-type: text/plain\n\n" );
     if ($interface == 1){
     system( "/bin/cat ../../../513/2/index.html; echo '\n\n\n\n'; /bin/cat Login.cgi; echo '\n\n\n\n'; /bin/cat Login.pl");
	}
     elsif ( $interface == 2 ) {
     system( "/bin/cat ../../../513/2/Admin.html; echo '\n\n\n\n'; /bin/cat Admin.cgi; echo '\n\n\n\n'; /bin/cat Admin.pl; ");
	}
    elsif ( $interface == 3 ) {
     system( "/bin/cat ../../../513/2/AddBooks.html; echo '\n\n\n\n'; /bin/cat AddBooks.cgi; echo '\n\n\n\n'; /bin/cat AddBooks.pl; echo '\n\n\n\n'; /bin/cat AddBooks.java");
	}
     elsif ( $interface == 4 ) {
     system( "/bin/cat ViewBook.cgi; echo '\n\n\n\n'; /bin/cat ViewBook.pl; echo '\n\n\n\n'; /bin/cat ViewBook.java");
	}
    elsif ( $interface == 5 ) {
     system( "/bin/cat ViewCustomer.cgi; echo '\n\n\n\n'; /bin/cat ViewCustomer.pl; echo '\n\n\n\n'; /bin/cat ViewCustomer.java");
	}
    elsif ( $interface == 6 ) {
     system( " /bin/cat ListBooks.java; echo '\n\n\n\n'; /bin/cat ListCustomers.java; echo '\n\n\n\n'; /bin/cat Rank.java; echo '\n\n\n\n'; /bin/cat Reset.java" );
	}    

    elsif ( $interface eq "help" ) {
     system( "/bin/cat ../../../513/2/Help.html;" );
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


