import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{
    private Connection connection;
    private List<Ad> ads;

    MySQLAdsDao(Config config){
        try {
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
        List<Ad> output = new ArrayList<>();
        String query = "SELECT * FROM ads";
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while(rs.next()) {
                output.add(
                        new Ad(
                                rs.getLong("id"),
                                rs.getLong("user_id"),
                                rs.getString("title"),
                                rs.getString("description")
                        )
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return output;
    }

    @Override
    public Long insert(Ad ad) {
        String query = String.format("INSERT INTO ads(user_id, title, description) VALUES (1, '%s', '%s' )", ad.getTitle(), ad.getDescription());
        long id = 0;
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getGeneratedKeys();
            if (rs.next()) {
                System.out.println("Record inserted. id = " + rs.getLong(1));
            }
            id = rs.getLong(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;

    }

    public static void main(String[] args) {
        Config config = new Config();
        Ads ad = new MySQLAdsDao(config);
        Ad first = new Ad(1, "lawnmower", "cuts grass");
        Ad second = new Ad(1, "phone", "calls people");
        Ad third = new Ad(1, "boat", "sinks");
        ad.insert(first);
        ad.insert(second);
        ad.insert(third);
        List<Ad> ads = ad.all();
        for (Ad obj : ads){
            System.out.println(obj.getTitle());
            System.out.println(obj.getDescription());
        }
    }
}


