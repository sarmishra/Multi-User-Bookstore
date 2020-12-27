// Import the following packages to use JDBC.
import  java.sql.*;
import  java.io.*;
import  oracle.jdbc.*;
import  oracle.jdbc.pool.OracleDataSource;

class  ViewBook {
  public static void  main( String args[ ] ) throws SQLException {
    String user     = "C##saroj.mishra";
    String password = "saroj5284";
    String database = "65.52.222.73:1521/cdb1";

	//Open an OracleDataSource and get a connection.
    OracleDataSource ods = new OracleDataSource( );
    ods.setURL     ( "jdbc:oracle:thin:@" + database );
    ods.setUser    ( user );
    ods.setPassword( password );
    Connection conn = ods.getConnection( );

     try {

      Statement stmt = conn.createStatement( );
      // String query = "select a.author_id, a.author_name, g.genre_name, b.book_title from author a, book b, genre g, book1 b1, book2 b2 where a.author_id = " + args[0].trim() + " and a.author_id=b1.a_id and b1.isbn=b.isbn and b.isbn=b2.isbn and b2.g_id=g.genre_id";
      String query = "select b.isbn, b.title, b.price from books b where b.isbn = '" + args[0].trim() +"' ";
      ResultSet rset = stmt.executeQuery(  query );
      if ( rset.next( ) ) {
      System.out.println("<br><br><b><u>ISBN:</u> </b>" + rset.getString(1) + "<br>");
      System.out.println("<b><u>Book Title:</u> </b>" + rset.getString(2) + "<br>");
      System.out.println("<b><u>Price:</u> $</b>" + rset.getString(3) + "<br>");

      }

      Statement stmt1 = conn.createStatement( );
      String query1 = "select round(avg( r.rating )) from rank r where r.isbn = '" + args[0].trim() + "' ";
      ResultSet rset1 = stmt1.executeQuery(  query1 );
      if ( rset1.next() ) {
        System.out.print( "<b><u>Average rating:</u> </b>" + rset1.getString(1) + "<br>" );
      }

      
     // Close the ResultSet and Statement.
     rset.close( );
     rset1.close( );
     stmt.close( );
     stmt1.close( );
    }
	
    catch ( SQLException ex ) {
      System.out.println( ex );
    }

    // Close the Connection.
    conn.close( );
  }
}	