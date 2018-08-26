
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {

    String databaseURL = "jdbc:mysql://localhost:3306/library?useSSL = false";
    String user = "root";
    String password = "manager";

    public List<Category> list() throws SQLException {

        List<Category> listCategory = new ArrayList<>();
        try (Connection connection = DriverManager.getConnection(databaseURL, user, password)) {

            String sql = "SELECT  mainClass, subClass FROM classification";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);

            while (result.next()) {
                String mainClass = result.getString("mainClass");
                String subClass = result.getString("subClass");
                Category category = new Category(mainClass, subClass);
                listCategory.add(category);
            }
        } catch (SQLException ex) {
            throw ex;
        }
        return listCategory;
    }
}
