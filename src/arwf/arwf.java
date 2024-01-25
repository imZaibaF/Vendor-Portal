package arwf;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class arwf

{
	public static Connection con;

	public static boolean conOpen = false;
	

	public static void ConEstablish() throws SQLException

	{
		try {
			// System.out.println("Connection - "+ conOpen);
			if (!conOpen) {

		/*		DriverManager
						.registerDriver(new oracle.jdbc.driver.OracleDriver()); */
						
		
				/* con = DriverManager.getConnection("jdbc:mysql://10.205.9.207:3306/misTest?" +
					                                   "user=test&password=test");*/
		  con =
				  DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","Zai21@quen"); 
				 
				 
				conOpen = true;
				System.out.println("Connection Established!");
			}
		} catch (Exception e) {
			System.out.println("Error ==== Connection.." + e);
			System.out.println(
					"Unable to establish network/database connection!");
			e.printStackTrace();
			con = null;
		}
	}

	
	public static Connection conn()

	{
		try {
			// System.out.println("Connection - "+ conOpen);
			if (!conOpen) {

		/*		DriverManager
						.registerDriver(new oracle.jdbc.driver.OracleDriver()); */
						
		
				/* con = DriverManager.getConnection("jdbc:mysql://10.205.9.207:3306/misTest?" +
			
					                                   "user=test&password=test");*/
				Class.forName("com.mysql.jdbc.Driver");
		  con =
				  DriverManager.getConnection("jdbc:mysql://localhost:3306/vendor","root","Zai21@quen"); 
				 
				 
				conOpen = true;
				System.out.println("Connection Established!");
				return con;
			} else
			{
				return con;
			}
		} catch (Exception e) {
			System.out.println("Error ==== Connection.." + e);
			System.out.println(
					"Unable to establish network/database connection!");
			e.printStackTrace();
			con = null;
			return null;
		}
		
	}

	
		public static void closeConnection() throws SQLException {

		try {

			if (conOpen) {
				con.close();
				conOpen = false;
				System.out.println("Application closed!");
			}
		} catch (SQLException e) {
			System.out.println("Connection termination - Error!");
			e.printStackTrace();
		}

	}

	public static void viewRecs() throws SQLException {

		Statement stmt = null;
		ResultSet rsCount = null;

		try {

			stmt = con.createStatement();
			rsCount = stmt.executeQuery("select distinct uname,pass from login");

			while (rsCount.next())
				System.out.println(rsCount.getString(1)+"_" + rsCount.getString(2)+"_" + rsCount.getString(3));

		} catch (SQLException e) {
			System.out.println("Connection termination - Error!");
			e.printStackTrace();

		} finally {

			if (stmt != null)
				stmt.close();
			if (rsCount != null)
				rsCount.close();
		}

	}
	
	public static String  authUser(String usr, String pass) {
		
		
		Statement stmt = null;
		ResultSet rs = null;

		try {
			
			stmt = arwf.conn().createStatement();
			rs = stmt.executeQuery("select  uname,pass from vendor_login where uname='"+usr+"' and pass='"+pass+"'");

			if (rs.next())
				return "successfully logged in!";
			else
				return "Authentication Failed!";
		} catch (SQLException e) {
			System.out.println("Connection termination - Error!");
			e.printStackTrace();
			return "SQL/DB  Error!";
		} finally {

			if (stmt != null)
				try {
					stmt.close();
					if (rs != null)
						rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}

			
	}
	
	
	
public static String  insertUser(String usr, String pass) {
		
	
	Statement stmt = null;
	ResultSet rs = null;

	try {
		
		stmt = arwf.conn().createStatement();
		System.out.println("insert into login values(uname='"+usr+"',pass='"+pass+"') ");
		System.out.println("stmt=" +stmt);
		rs = stmt.executeQuery("insert into login values(uname='"+usr+"',pass='"+pass+"')");

		if (rs.next())
			return "insertion Suceessful!";
		else
			return "insertion Failed!";
	} catch (SQLException e) {
		System.out.println("Connection termination - Error!");
		e.printStackTrace();
		return "SQL/DB  Error!";
	}
			
	}
	
	
	
		public static void main(String[] args) throws Exception {
		
		//ConDB.ConEstablish(); 
		//ConDB.viewRecs();
System.out.println(arwf.authUser("rr", "oo"));
System.out.println(arwf.insertUser("rr", "oo"));
	//	ConDB.smsCompRecords();
		
	}
}

