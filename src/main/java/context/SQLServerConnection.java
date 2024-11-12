package context;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class SQLServerConnection {
    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException
    {
        String dbDriver = "com.microsoft.sqlserver." + "jdbc.SQLServerDriver";
        String dbURL = "jdbc:sqlserver://localhost:1433";
        String dbName = "QuanLyBanGiay1";
        String dbUsername = "sa";
        String dbPassword = "1";
        String connectionURL = dbURL + ";databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true";
        Connection conn = null;
        try
        {
            Class.forName(dbDriver);
            conn = DriverManager.getConnection(connectionURL, dbUsername, dbPassword);
            System.out.println("connect successfully!");
            
        }
        catch (SQLException ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("Error Code: " + ex.getErrorCode());
        }
        return conn;
    }
}

