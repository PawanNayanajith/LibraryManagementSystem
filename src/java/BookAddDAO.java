
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class BookAddDAO {

    public void saveBook(BookAdd bookAdd) throws ClassNotFoundException, SQLException {
        DB_Connection db = new DB_Connection();
        Connection con = db.connect();
        Statement stmt = con.createStatement();

        try {
            stmt.executeUpdate("INSERT INTO book (bookID,title,author,publisher,mainClass,subClass,yop,lpy,isbnNo,nop) VALUES ('" + bookAdd.getBookID() + "','" + bookAdd.getTitle() + "','" + bookAdd.getAuthor() + "','" + bookAdd.getPublisher() + "','" + bookAdd.getMainClass() + "','" + bookAdd.getSubClass() + "','" + bookAdd.getYoP() + "','" + bookAdd.getLPY() + "','" + bookAdd.getISBN() + "','" + bookAdd.getNoP() + "')");

        } catch (SQLException ex) {
            System.out.print("Update Failed" + ex);
        }

    }
}
