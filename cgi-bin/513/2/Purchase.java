// Import the following packages to use JDBC.
import  java.sql.*;
import  java.io.*;
import  oracle.jdbc.*;
import  oracle.jdbc.pool.OracleDataSource;

class  Purchase {
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
      	
	for ( int i=1;  i < args.length;  i++ ) {

	 Statement stmt = conn.createStatement( );
         String query = " select * from Purchase where isbn = '" + args[i].trim() + "' and c_id = '" + args[0].trim() + "' ";
      	 ResultSet rset = stmt.executeQuery(query);

	 if (!rset.next()) {
	  Statement stmt1 = conn.createStatement( );
          String query1 = "insert into Purchase (c_id, isbn) values ('" + args[0].trim() + "', '" + args[i].trim() + "')";
      	  // System.out.println( "<h3>" + query + "</h3>");
          ResultSet rset1 = stmt.executeQuery(query1);
          System.out.print("<br><br><h3 align = center ><u>You have successfully purchased the book of ISBN:</u>"+args[i].trim()+"</h3><br>");
         
          rset1.close();
          stmt1.close();
	 }

	// Close the ResultSet and Statement.
     rset.close( );
     stmt.close( );

       }

     
   }

    catch ( SQLException ex ) {
      System.out.println( ex );
    }


    // Close the Connection.
    conn.close( );
  }
}	