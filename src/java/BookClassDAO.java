
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class BookClassDAO {

    public void saveBookClass(BookClass bookClass) throws ClassNotFoundException, SQLException {
        DB_Connection db = new DB_Connection();
        Connection con = db.connect();
        Statement stmt = con.createStatement();

        try {
            stmt.executeUpdate("INSERT INTO mainclassification(mainClass) VALUES ('" + bookClass.getMainClass()+ "')");

        } catch (SQLException ex) {
            System.out.print("Update Failed" + ex);
        }

    }
}
