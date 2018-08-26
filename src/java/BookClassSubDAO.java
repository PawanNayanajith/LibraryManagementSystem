
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class BookClassSubDAO {

    public void saveBookClassSub(BookClassSub bookClassSub) throws ClassNotFoundException, SQLException {
        DB_Connection db = new DB_Connection();
        Connection con = db.connect();
        Statement stmt = con.createStatement();

        try {
            stmt.executeUpdate("INSERT INTO subclassification(mainClass,subClass) VALUES ('" + bookClassSub.getMainClass()+ "','" + bookClassSub.getSubClass()+ "')");

        } catch (SQLException ex) {
            System.out.print("Update Failed" + ex);
        }

    }
}
