// Import the following packages to use JDBC.
import  java.sql.*;
import  java.io.*;
import  oracle.jdbc.*;
import  oracle.jdbc.pool.OracleDataSource;

class  SignUp {
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
      String query = "insert into Customer (c_name) values ('" + args[0].trim() + "')";
	
      // System.out.println( "<b>" + query + "</b>" + "<br>" + "<br>");
      ResultSet rset = stmt.executeQuery(query);

      System.out.print("<br><br><h3 align = center >You have successfully registered, go back to the login page.</h3><br>");
         
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