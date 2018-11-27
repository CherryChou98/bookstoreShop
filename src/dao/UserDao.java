package dao;

import utils.User;

import java.sql.*;
import java.util.ArrayList;

public class UserDao {
    Connection conn = null;
    ArrayList users = new ArrayList();

    //数据库查询操作
    public ArrayList queryAllUsers() throws Exception{
        try{
            Class.forName("org.sqlite.JDBC");
            String url = "jdbc:sqlite:F:/Java Practice/javaWeb/javaWebExp/Git/database/bookstore.db";
            Connection conn = DriverManager.getConnection(url);
            Statement stmt = conn.createStatement();

            String query_sql = "select * from user";
            ResultSet rs = stmt.executeQuery(query_sql);
            while(rs.next()){
                User user = new User();
                user.setId(rs.getString("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setPhone(rs.getString("phone"));
                user.setCellphone(rs.getString("cellphone"));
                user.setEmail(rs.getString("email"));
                user.setAddress(rs.getString("address"));
            }
            rs.close();
            stmt.close();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try {
                if(conn != null){
                    conn.close();
                    conn = null;
                }
            }catch (Exception ex){
            }
        }
        return users;
    }
}
