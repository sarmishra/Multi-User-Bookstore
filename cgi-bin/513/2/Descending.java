// Import the following packages to use JDBC.
import  java.sql.*;
import  java.io.*;
import  oracle.jdbc.*;
import  oracle.jdbc.pool.OracleDataSource;

class  Descending {
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
      String query = "select r.isbn, title, round(avg( r.rating )) from books b, rank r where b.isbn=r.isbn group by r.isbn, title having avg(r.rating) >='" + args[0].trim() +"' ORDER BY avg(r.rating) DESC";
      ResultSet rset = stmt.executeQuery(  query );
       
      System.out.print("<h2 align = center><u> Results are in the Descending order</u></h2>");
      System.out.print("<p align = center>(Note: click the book title for the rating)</p><br>");


      System.out.print("<form align ='center' style='font-size:110%;' method='Post' action='http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/Purchase.cgi?c_id=" + args[1].trim() +"'>");
      while ( rset.next( ) ) {
      System.out.print( "<input type= 'checkbox' value='"+ rset.getString(1) +"' name= 'check' /><a href ='http://undcemcs02.und.edu/~saroj.mishra/cgi-bin/513/2/SearchRate.cgi?isbn="+ rset.getString(1) + "'> Book Title: " + rset.getString(2) +" </a>&nbsp;&nbsp;");
	
	// Checkbox Start
      System.out.print("Average Rating:");
       if (rset.getInt(3) == 1) {
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='1' id='1' checked='checked'>1&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='2' id='1'>2&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='3' id='1'>3&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='4' id='1'>4&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='5' id='1'>5&nbsp;&nbsp;"); 
	}

      else if (rset.getInt(3)  == 2) {
 	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='1' id='2'>1&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='2' id='2' checked='checked'>2&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='3' id='2'>3&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='4' id='2'>4&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='5' id='2'>5&nbsp;&nbsp;");
	}

      else if (rset.getInt(3) == 3) {
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='1' id='3'>1&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='2' id='3'>2&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='3' id='3' checked='checked'>3&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='4' id='3'>4&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='5' id='3'>5&nbsp;&nbsp;"); 
	}


      else if (rset.getInt(3) == 4) {
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='1' id='4'>1&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='2' id='4'>2&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='3' id='4'>3&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='4' id='4' checked='checked'>4&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='5' id='4' >5&nbsp;&nbsp;"); 
	}

      else {
	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='1' id='5'>1&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='2' id='5'>2&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='3' id='5'>3&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='4' id='5'>4&nbsp;&nbsp;"); 
  	System.out.print("<input type='radio' name='"+rset.getString(1)+"'  value='5' id='5' checked='checked' >5&nbsp;&nbsp;"); 
	}

	System.out.print("<br><br>");

   }         

      System.out.println("<br><input type='submit' name ='submit' value= 'Purchase Book' /> ");
      System.out.println("</form>");
  
      
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