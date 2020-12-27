// Import the following packages to use JDBC.
import  java.sql.*;
import  java.io.*;
import  oracle.jdbc.*;
import  oracle.jdbc.pool.OracleDataSource;

class  Login {
  public static void  main( String args[ ] ) throws SQLException {
    String user     = "C##saroj.mishra";
    String password = "saroj5284";
    String database = "65.52.222.73:1521/cdb1";

	// Open an OracleDataSource and get a connection.
    OracleDataSource ods = new OracleDataSource( );
    ods.setURL     ( "jdbc:oracle:thin:@" + database );
    ods.setUser    ( user );
    ods.setPassword( password );
    Connection conn = ods.getConnection( );

    try {

      Statement stmt = conn.createStatement( );
      String query = "select c_id, c_name from Customer where c_name = '" + args[0].trim() + "' ";
	
      // System.out.println( "<b>" + query + "</b>" + "<br>" + "<br>");
      ResultSet rset = stmt.executeQuery(query );

	if (rset.next() ) {
	System.out.println("<br><br><h3 align= center> Welcome to the UND BookStore,</h3><h4 align= center>" + rset.getString(2)+ "</h4>");
	System.out.print("<p align= center><a href='http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Customer.cgi?c_id="+ rset.getString(1)+"'>Go to the BookStore</a></p>");
	} 

	else {
	System.out.println("<br><br><h3 align= center>Enter a correct login informations!</h3>");
	System.out.print("<p align= center><a href='http://undcemcs02.und.edu/~saroj.mishra/513/2/index.html'>Go to Login Page</a></p>");
	}  
       
     // Close the ResultSet and Statement.
     rset.close( );
     stmt.close( );
   }

    catch ( SQLException ex ) {
      System.out.println( ex );
    }


    // Close the Connection.
    conn.close( );
  }
}	