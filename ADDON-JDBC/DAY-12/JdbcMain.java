package MySqlProgram;
import java.sql.*;
public class JdbcMain {
			public static void main(String[] args) throws Exception {
				String url="jdbc:mysql://localhost:3306/ stdmark";
				String username="root";
				String password="Kgisl@123";
			Connection connect = DriverManager.getConnection(url, username, password);
				System.out.println("Driver Loaded");
				Statement st = connect.createStatement();
				String sql="select*from stdmark";
		        ResultSet rs = st.executeQuery(sql);
		        while(rs.next()) {
		        rs.next();
		        System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) );
		        rs.next();
		        System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3));
				rs.next();
				}
	}
}
